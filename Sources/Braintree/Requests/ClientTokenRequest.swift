//
//  ClientTokenRequest.swift
//  Braintree
//
//  Created by Mihael Isaev on 28/09/2018.
//

import Foundation

public final class ClientTokenRequest: BraintreeContent {
    public static var key: String = "client-token"
    static var defaultVersion = 2
    
    public var customerId: String?
    public var version: Int
    public var merchantAccountId: String
    public var optionsRequest: ClientTokenOptionsRequest?
    
    private enum CodingKeys : String, CodingKey {
        case customerId = "customer-id"
        case version
        case merchantAccountId = "merchant-account-id"
        case optionsRequest = "options"
    }
}
