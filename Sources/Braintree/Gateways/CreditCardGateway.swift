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
        return try http.post(try configuration.merchantPath() + "/payment_methods", payload: request, desiredCode: 201)
    }
    
    public func find(token: String) throws -> Future<CreditCard> {
        return try http.get(try configuration.merchantPath() + "/payment_methods/credit_card/" + token)
    }
    
    public func expired() throws -> Future<[String]> {
        struct Response: Codable {
            let pageSize: Int
            struct Item: Codable {
                let item: String?
                let type: String
            }
            let ids: [Item]
            
            private enum CodingKeys : String, CodingKey {
                case pageSize = "page-size", ids
            }
        }
        let future: Future<Response> = try http.post(try configuration.merchantPath() + "/payment_methods/all/expired_ids")
        return future.map { resp in
            print("resp.pageSize: \(resp.pageSize) resp.ids.count: \(resp.ids.count)")
            return resp.ids.compactMap { $0.item }
        }
    }
}
