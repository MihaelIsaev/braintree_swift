//
//  PayPalOnlyAccountRequest.swift
//  Braintree
//
//  Created by Mihael Isaev on 28/09/2018.
//

import Foundation
import Vapor

public final class PayPalOnlyAccountRequest: Content {
    public var clientId: String
    public var clientSecret: String
    
    private enum CodingKeys : String, CodingKey {
        case clientId = "client_id", clientSecret = "client_secret"
    }
}
