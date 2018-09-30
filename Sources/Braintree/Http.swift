//
//  Http.swift
//  Braintree
//
//  Created by Mihael Isaev on 27/09/2018.
//

import Foundation
import Vapor
import XMLParsing

public protocol BraintreeContent: Content {
    static var key: String { get }
}

public class Http {
    public typealias Future = EventLoopFuture
    
    public struct File: Codable {
        public var filename: String
        public var data: Data
        public var contentType: String?
        public var ext: String?
    }
    
    public enum RequestMethod: Int, Codable {
        case delete, get, post, put
    }
    
    private var container: Container
    public var configuration: Configuration
    
    public init (container: Container, configuration: Configuration) {
        self.container = container
        self.configuration = configuration
    }
    
    public func get<R>(_ url: String) throws -> Future<R> where R: BraintreeContent {
        let request = Request(url: configuration.baseURL + url, method: .GET, headers: try headers(), body: nil)
        return try send(request).map { response in
            self.configuration.logger.log(.info, message: "\(Date()) \(request.method.rawValue) \(url)")
            self.configuration.logger.log(.fine, message: "\(Date()) \(request.method.rawValue) \(url) \(response.statusCode)")
            switch true {
            case response.statusCode == 200:
                return try self.decode(response: response)
            default:
                throw BraintreeError(BraintreeErrorCase.server)
            }
        }
    }
    
    public func post<P, R>(_ url: String, payload: P) throws -> Future<R> where P: BraintreeContent, R: BraintreeContent {
        let payload = try encode(payload)
        let request = Request(url: configuration.baseURL + url, method: .POST, headers: try headers(), body: payload)
        return try send(request).map { response in
            self.configuration.logger.log(.info, message: "\(Date()) \(request.method.rawValue) \(url)")
            self.configuration.logger.log(.fine, message: "\(Date()) \(request.method.rawValue) \(url) \(response.statusCode)")
            switch true {
            case response.statusCode == 200:
                return try self.decode(response: response)
            default:
                throw BraintreeError(BraintreeErrorCase.server)
            }
        }
    }
    
    public func put<P, R>(_ url: String, payload: P) throws -> Future<R> where P: BraintreeContent, R: BraintreeContent {
        let payload = try encode(payload)
        let request = Request(url: configuration.baseURL + url, method: .PUT, headers: try headers(), body: payload)
        return try send(request).map { response in
            self.configuration.logger.log(.info, message: "\(Date()) \(request.method.rawValue) \(url)")
            self.configuration.logger.log(.fine, message: "\(Date()) \(request.method.rawValue) \(url) \(response.statusCode)")
            switch true {
            case response.statusCode == 200:
                return try self.decode(response: response)
            default:
                throw BraintreeError(BraintreeErrorCase.server)
            }
        }
    }
    
    public func delete<R>(_ url: String) throws -> Future<R> where R: BraintreeContent {
        let request = Request(url: configuration.baseURL + url, method: .DELETE, headers: try headers(), body: nil)
        return try send(request).map { response in
            self.configuration.logger.log(.info, message: "\(Date()) \(request.method.rawValue) \(url)")
            self.configuration.logger.log(.fine, message: "\(Date()) \(request.method.rawValue) \(url) \(response.statusCode)")
            switch true {
            case response.statusCode == 200:
                return try self.decode(response: response)
            default:
                throw BraintreeError(BraintreeErrorCase.server)
            }
        }
    }
    
    private func encode<T>(_ payload: T) throws -> Data where T: BraintreeContent {
        let payload = try JSONEncoder().encode(payload)
        let payloadDict = try JSONSerialization.jsonObject(with: payload, options: .allowFragments)
        let dict: [String: Any] = [T.key: payloadDict]
        return try JSONSerialization.data(withJSONObject: dict, options: JSONSerialization.WritingOptions.init(rawValue: 0))
    }
    
    private func decode<T>(response: Response) throws -> T where T: BraintreeContent {
        guard let responseData = response.data else {
            throw BraintreeError(BraintreeErrorCase.server, reason: "Response data cannot be nil")
        }
        return try XMLDecoder().decode(T.self, from: responseData)
    }
    
    private func headers() throws -> [String: String] {
        var headers: [String: String] = [:]
        headers["Accept"] = "application/xml"
        headers["User-Agent"] = "Braintree Swift " + Configuration.version
        headers["X-ApiVersion"] = Configuration.apiVersion
        headers["Authorization"] = try authorizationHeader()
        headers["Accept-Encoding"] = "gzip"
        headers["Content-Type"] = "application/json"
        return headers
    }
    
    private func authorizationHeader() throws -> String {
        if let accessToken = configuration.accessToken {
            return "Bearer " + accessToken
        }
        var credentials = ""
        if let clientId = configuration.clientId, let clientSecret = configuration.clientSecret {
            credentials = clientId + ":" + clientSecret
        } else if let publicKey = configuration.publicKey, let privateKey = configuration.privateKey {
            credentials = publicKey + ":" + privateKey
        } else {
            throw BraintreeError(.configuration, reason: "Unable to get authorization credentials")
        }
        guard let base64String = credentials.data(using: .utf8)?.base64EncodedString() else {
            throw BraintreeError(.configuration, reason: "Unable to encode authorization credentials to base64")
        }
        return "Basic " + base64String.trimmingCharacters(in: .whitespaces)
    }
    
    struct Request: Codable {
        var url: String
        enum Method: String, Codable {
            case POST, PUT, GET, DELETE
        }
        var method: Method
        var headers: [String: String] = [:]
        var body: Data?
    }
    
    struct Response: Codable {
        var statusCode: Int
        var data: Data?
        
        init (_ resp: HTTPURLResponse, data: Data?) {
            self.statusCode = resp.statusCode
            self.data = data
        }
    }
    
    private func send(_ req: Request) throws -> EventLoopFuture<Response> {
        guard let url = URL(string: req.url) else { throw BraintreeError(BraintreeErrorCase.server, reason: "") }
        var urlReq = URLRequest(url: url)
        urlReq.httpMethod = req.method.rawValue
        urlReq.httpBody = req.body ?? Data()
        req.headers.forEach { key, val in
            urlReq.addValue(val, forHTTPHeaderField: key.description)
        }
        let promise = container.eventLoop.newPromise(Response.self)
        let urlSession = URLSession(configuration: .default)
        urlSession.dataTask(with: urlReq) { data, urlResponse, error in
            if let error = error {
                promise.fail(error: error)
                return
            }
            
            guard let httpResponse = urlResponse as? HTTPURLResponse else {
                let error = BraintreeError(BraintreeErrorCase.server, reason: "URLResponse was not a HTTPURLResponse.")
                promise.fail(error: error)
                return
            }
            promise.succeed(result: Response(httpResponse, data: data))
            }.resume()
        return promise.futureResult
    }
}
