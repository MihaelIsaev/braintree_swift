//
//  AmexExpressCheckoutDetails.swift
//  Braintree
//
//  Created by Mihael Isaev on 28/09/2018.
//

import Foundation

public final class AmexExpressCheckoutDetails: BraintreeContent {
    public static var key: String = ""
    
    public var token: String
    public var cardType: String
    public var bin: String
    public var expirationMonth: String
    public var expirationYear: String
    public var cardMemberNumber: String
    public var cardMemberExpiryDate: String
    public var imageUrl: String
    public var sourceDescription: String
    
    private enum CodingKeys : String, CodingKey {
        case token
        case cardType = "card-type"
        case bin
        case expirationMonth = "expiration-month"
        case expirationYear = "expiration-year"
        case cardMemberNumber = "card-member-number"
        case cardMemberExpiryDate = "card-member-expiry-date"
        case imageUrl = "image-url"
        case sourceDescription = "source-description"
    }
}
