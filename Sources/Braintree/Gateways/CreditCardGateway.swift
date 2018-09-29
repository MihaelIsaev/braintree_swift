//
//  CreditCardGateway.swift
//  Braintree
//
//  Created by Mihael Isaev on 27/09/2018.
//

import Foundation
import Vapor

public class CreditCardGateway {
    public var http: Http
    public var configuration: Configuration
    
    public init(http: Http, configuration: Configuration) {
        self.http = http
        self.configuration = configuration
    }
    
    public func create(request: CreditCardRequest) throws -> Future<CreditCard> {
        return try http.post(try configuration.merchantPath() + "/payment_methods", payload: request)
    }
}
