//
//  BraintreeEnvironment.swift
//  Braintree
//
//  Created by Mihael Isaev on 27/09/2018.
//

import Foundation

public enum BraintreeEnvironment: String, Codable {
    /// For Braintree internal development.
    case development, qa
    
    /// For production.
    case production
    
    /// For merchants to use during their development and testing.
    case sandbox
    
    public var baseURL: String {
        switch self {
        case .development: return developmentBaseURL() + ":" + developmentPort()
        case .qa: return "https://gateway.qa.braintreepayments.com:443"
        case .production: return "https://api.braintreegateway.com:443"
        case .sandbox: return "https://api.sandbox.braintreegateway.com:443"
        }
    }
    
    public var authURL: String {
        switch self {
        case .development: return "http://auth.venmo.dev:9292"
        case .qa: return "https://auth.qa.venmo.com"
        case .production: return "https://auth.venmo.com"
        case .sandbox: return "https://auth.sandbox.venmo.com"
        }
    }
    
    public var certificateFilenames: [String] {
        switch self {
        case .development: return ["ssl/atmosphere.server.crt"]
        case .qa: return ["ssl/api_braintreegateway_com.ca.crt", "ssl/payments_braintreeapi_com.ca.crt"]
        case .production: return ["ssl/api_braintreegateway_com.ca.crt", "ssl/payments_braintreeapi_com.ca.crt"]
        case .sandbox: return ["ssl/api_braintreegateway_com.ca.crt", "ssl/payments_braintreeapi_com.ca.crt"]
        }
    }
    
    public var graphQLURL: String {
        switch self {
        case .development: return developmentGraphQLURL()
        case .qa: return "https://payments-qa.dev.braintree-api.com/graphql"
        case .production: return "https://payments.braintree-api.com/graphql"
        case .sandbox: return "https://payments.sandbox.braintree-api.com/graphql"
        }
    }
    
    public func developmentBaseURL() -> String {
        return ProcessInfo.processInfo.environment["GATEWAY_BASE_URL"] ?? "http://localhost"
    }
    
    public func developmentPort() -> String {
        return ProcessInfo.processInfo.environment["GATEWAY_PORT"] ?? "3000"
    }
    
    public func developmentGraphQLURL() -> String {
        return ProcessInfo.processInfo.environment["GRAPHQL_URL"] ?? "https://atmosphere.bt.local:8080/graphql"
    }
    
    public static func parseEnvironment(environment: String) throws -> BraintreeEnvironment {
        if environment == "integration" {
            return .development
        }
        guard let env = BraintreeEnvironment(rawValue: environment) else {
            throw BraintreeError(.configuration, reason: "Unknown environment: \(environment)")
        }
        return env
    }
}
