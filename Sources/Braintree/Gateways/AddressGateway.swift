//
//  AddressGateway.swift
//  Braintree
//
//  Created by Mihael Isaev on 27/09/2018.
//

import Foundation

public class AddressGateway {
    public var http: Http
    public var configuration: Configuration
    
    public init(http: Http, configuration: Configuration) {
        self.http = http
        self.configuration = configuration
    }
    
    public func create(customerId: String, request: AddressRequest) throws -> Http.Future<Address> {
        return try http.post(try configuration.merchantPath() + "/customers/" + customerId + "/addresses", payload: request)
    }
    
    public func delete(customerId: String, id: String) throws -> Http.Future<Address> {
        return try http.delete(try configuration.merchantPath() + "/customers/" + customerId + "/addresses/" + id)
    }
}
