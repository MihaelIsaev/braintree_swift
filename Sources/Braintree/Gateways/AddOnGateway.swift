//
//  AddOnGateway.swift
//  Braintree
//
//  Created by Mihael Isaev on 27/09/2018.
//

import Foundation

public class AddOnGateway {
    public var http: Http
    public var configuration: Configuration
    
    public init(http: Http, configuration: Configuration) {
        self.http = http
        self.configuration = configuration
    }
    
//    public func all() throws -> HTTP.Future<[AddOn]> {
//        return try http.get("/add_ons")
//    }
}
