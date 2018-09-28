//
//  CredentialsParser.swift
//  Braintree
//
//  Created by Mihael Isaev on 28/09/2018.
//

import Foundation

class CredentialsParser {
    public var environment: Environment
    public var merchantId: String?
    public var clientId: String?
    public var clientSecret: String?
    public var accessToken: String?
    
    public init (clientId: String, clientSecret: String) throws {
        guard clientId.hasPrefix("client_id") else {
            throw BraintreeError(.configuration, reason: "Value passed for clientId is not a valid clientId")
        }
        guard clientSecret.hasPrefix("client_secret") else {
            throw BraintreeError(.configuration, reason: "Value passed for clientSecret is not a valid clientSecret")
        }
        self.clientId = clientId
        self.clientSecret = clientSecret
        
        let clientIdEnvironment = try CredentialsParser.parseEnvironment(clientId)
        let clientSecretEnvironment = try CredentialsParser.parseEnvironment(clientSecret)
        
        guard clientIdEnvironment == clientSecretEnvironment else {
            throw BraintreeError(.configuration, reason: "Mismatched credential environments: clientId environment is: " + clientIdEnvironment.rawValue + " and clientSecret environment is: " + clientSecretEnvironment.rawValue)
        }
        self.environment = clientIdEnvironment
    }
    
    public init (accessToken: String) throws {
        guard accessToken.hasPrefix("access_token") else {
            throw BraintreeError(.configuration, reason: "Value passed for accessToken is not a valid accessToken")
        }
        self.merchantId = CredentialsParser.parseMerchantId(accessToken)
        self.environment = try CredentialsParser.parseEnvironment(accessToken)
    }
    
    private static func parseEnvironment(_ credential: String) throws -> Environment {
        let environment = credential.split(separator: "$").map { "\($0)" }[1]
        return try Environment.parseEnvironment(environment: environment)
    }
    
    private static func parseMerchantId(_ accessToken: String) -> String {
        return accessToken.split(separator: "$").map { "\($0)" }[2]
    }
}
