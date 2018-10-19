//
//  ClientTokenOptionsRequest.swift
//  Braintree
//
//  Created by Mihael Isaev on 28/09/2018.
//

import Foundation

public final class ClientTokenOptionsRequest: BraintreeContent {
    public static var key: String = "client-token-options"
    public var makeDefault: Bool?
    public var verifyCard: Bool?
    public var failOnDuplicatePaymentMethod: Bool?
    
    private enum CodingKeys : String, CodingKey {
        case makeDefault = "make-default"
        case verifyCard = "verify-card"
        case failOnDuplicatePaymentMethod = "fail-on-duplicate-payment-method"
    }
}
