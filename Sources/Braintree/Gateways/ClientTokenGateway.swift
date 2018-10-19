//
//  ClientTokenGateway.swift
//  Braintree
//
//  Created by Mihael Isaev on 27/09/2018.
//

import Foundation
import Vapor

public class ClientTokenGateway {
    public var http: Http
    public var configuration: Configuration
    
    public init(http: Http, configuration: Configuration) {
        self.http = http
        self.configuration = configuration
    }
    
    public func generate(request: ClientTokenRequest) throws -> Future<String> {
        try verifyOptions(request: request)
        return try http.post(try configuration.merchantPath() + "/client_token/", payload: request)
    }
    
    private func verifyOptions(request: ClientTokenRequest) throws {
        if let options = request.optionsRequest, request.customerId == nil {
            var invalidOptions: [String] = []
            if options.verifyCard != nil {
                invalidOptions.append("VerifyCard")
            }
            if options.makeDefault != nil {
                invalidOptions.append("MakeDefault")
            }
            if options.failOnDuplicatePaymentMethod != nil {
                invalidOptions.append("FailOnDuplicatePaymentMethod")
            }
            if !invalidOptions.isEmpty {
                throw BraintreeError(.unexpected, reason: "Following arguments are invalid without customerId: " + invalidOptions.joined(separator: ", "))
            }
        }
    }
}
