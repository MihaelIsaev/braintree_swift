//
//  PayPalOnlyAccountRequest.swift
//  Braintree
//
//  Created by Mihael Isaev on 28/09/2018.
//

import Foundation

public final class PayPalOnlyAccountRequest: BraintreeContent {
    public static var key: String = ""
    
    public var clientId: String
    public var clientSecret: String
    
    private enum CodingKeys : String, CodingKey {
        case clientId = "client_id", clientSecret = "client_secret"
    }
}
