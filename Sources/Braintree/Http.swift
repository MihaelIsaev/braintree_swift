//
//  Http.swift
//  Braintree
//
//  Created by Mihael Isaev on 27/09/2018.
//

import Foundation
import Vapor

public class Http {
    public enum RequestMethod: Int, Codable {
        case delete, get, post, put
    }
    
    private var container: Container
    public var configuration: Configuration
    
    public init (container: Container, configuration: Configuration) {
        self.container = container
        self.configuration = configuration
    }
    
    public func get<R>(_ url: String) throws -> Future<R> where R: Codable {
        let client = try container.make(Client.self)
        return client.get(configuration.baseURL + url, headers: try headers()).flatMap { response in
            self.configuration.logger.log(.info, message: "\(Date().timeIntervalSince1970) GET \(url)")
            self.configuration.logger.log(.fine, message: "\(Date().timeIntervalSince1970) GET \(url) \(response.http.status.code)")
            switch true {
            case response.http.status.code == HTTPStatus.ok.code:
                return try response.content.decode(R.self)
            default:
                throw BraintreeError(BraintreeErrorCase.server)
            }
        }
    }
    
    public func post<P, R>(_ url: String, payload: P) throws -> Future<R> where P: Content, R: Codable {
        let client = try container.make(Client.self)
        return client.post(configuration.baseURL + url, headers: try headers()) { req in
            try req.content.encode(payload)
            }.flatMap { response in
                self.configuration.logger.log(.info, message: "\(Date().timeIntervalSince1970) POST \(url)")
                self.configuration.logger.log(.fine, message: "\(Date().timeIntervalSince1970) POST \(url) \(response.http.status.code)")
                switch true {
                case response.http.status.code == HTTPStatus.ok.code:
                    return try response.content.decode(R.self)
                default:
                    throw BraintreeError(BraintreeErrorCase.server)
                }
        }
    }
    
    public func put<P, R>(_ url: String, payload: P) throws -> Future<R> where P: Content, R: Codable {
        let client = try container.make(Client.self)
        return client.put(configuration.baseURL + url, headers: try headers()) { req in
            try req.content.encode(payload)
            }.flatMap { response in
                self.configuration.logger.log(.info, message: "\(Date().timeIntervalSince1970) PUT \(url)")
                self.configuration.logger.log(.fine, message: "\(Date().timeIntervalSince1970) PUT \(url) \(response.http.status.code)")
                switch true {
                case response.http.status.code == HTTPStatus.ok.code:
                    return try response.content.decode(R.self)
                default:
                    throw BraintreeError(BraintreeErrorCase.server)
                }
        }
    }
    
    public func delete<R>(_ url: String) throws -> Future<R> where R: Codable {
        let client = try container.make(Client.self)
        return client.delete(configuration.baseURL + url, headers: try headers()).flatMap { response in
            self.configuration.logger.log(.info, message: "\(Date().timeIntervalSince1970) DELETE \(url)")
            self.configuration.logger.log(.fine, message: "\(Date().timeIntervalSince1970) DELETE \(url) \(response.http.status.code)")
            switch true {
            case response.http.status.code == HTTPStatus.ok.code:
                return try response.content.decode(R.self)
            default:
                throw BraintreeError(BraintreeErrorCase.server)
            }
        }
    }
    
    private func headers() throws -> HTTPHeaders {
        var headers = HTTPHeaders([])
        headers.add(name: .accept, value: "application/xml")
        headers.add(name: .userAgent, value: "Braintree Swift " + Configuration.version)
        headers.add(name: "X-ApiVersion", value: Configuration.apiVersion)
        headers.add(name: HTTPHeaderName.authorization, value: try authorizationHeader())
        headers.add(name: HTTPHeaderName.acceptEncoding, value: "gzip")
        headers.add(name: HTTPHeaderName.contentType, value: "application/xml")
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
}
