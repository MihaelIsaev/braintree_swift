//
//  ApplePayDetails.swift
//  Braintree
//
//  Created by Mihael Isaev on 29/09/2018.
//

import Foundation

public final class ApplePayDetails: BraintreeContent {
    public static var key: String = ""
    
    public var cardType: String
    public var paymentInstrumentName: String
    public var sourceDescription: String
    public var cardholderName: String
    public var expirationMonth: String
    public var expirationYear: String
    public var token: String
    public var last4: String
    public var imageUrl: String
    
    private enum CodingKeys : String, CodingKey {
        case cardType = "card-type"
        case paymentInstrumentName = "payment-instrument-name"
        case sourceDescription = "source-description"
        case cardholderName = "cardholder-name"
        case expirationMonth = "expiration-month"
        case expirationYear = "expiration-year"
        case token
        case last4 = "last-4"
        case imageUrl = "image-url"
    }
}
