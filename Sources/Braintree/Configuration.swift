//
//  Configuration.swift
//  Braintree
//
//  Created by Mihael Isaev on 27/09/2018.
//

import Foundation

class Configuration {
    private let environment: Environment
    private let timeout: TimeInterval = 60
    private let connectTimeout: TimeInterval = 60
    //private let proxy: Proxy
    private var accessToken: String?
    
    private var clientId: String?
    private var clientSecret: String?
    
    private var merchantId: String?
    private var publicKey: String?
    private var privateKey: String?
    
    public let logger: Logger
    
    public static var version = ""//new ClientLibraryProperties().version() //TODO
    public static var grapthQLApiVersion = "2018-05-21"
    public static var apiVersion = "4"
    
    public init(environment: Environment, merchantId: String, publicKey: String, privateKey: String) throws {
        self.environment = environment
    
        guard merchantId.count > 0 else { throw BraintreeError(.configuration, reason: "merchantId needs to be set") }
        self.merchantId = merchantId
        
        guard publicKey.count > 0 else { throw BraintreeError(.configuration, reason: "publicKey needs to be set") }
        self.publicKey = publicKey
    
        guard privateKey.count > 0 else { throw BraintreeError(.configuration, reason: "privateKey needs to be set") }
        self.privateKey = privateKey
        self.logger = Logger()
    }
    
    public init(clientId: String, clientSecret: String) throws {
        let parser = try CredentialsParser(clientId: clientId, clientSecret: clientSecret)
        self.environment = parser.environment
        self.clientId = clientId
        self.clientSecret = clientSecret
        self.logger = Logger()
    }
    
    public init(accessToken: String) throws {
        let parser = try CredentialsParser(accessToken: accessToken)
        self.environment = parser.environment
        guard let merchantId = parser.merchantId else { throw BraintreeError(.configuration, reason: "merchantId cannot be nil") }
        self.merchantId = merchantId
        self.accessToken = accessToken
        self.logger = Logger()
    }
    
    public var baseURL: String {
        return environment.baseURL
    }
    
    public func merchantPath() throws -> String {
        guard let merchantId  = merchantId else { throw BraintreeError(.configuration, reason: "merchantId is nil") }
        return "/merchants/" + merchantId
    }
    
    var graphQLURL: String {
        return environment.graphQLURL
    }
}
