//
//  AndroidPayDetails.swift
//  Braintree
//
//  Created by Mihael Isaev on 28/09/2018.
//

import Foundation

public final class AndroidPayDetails: BraintreeContent {
    public static var key: String = ""
    
    public var bin: String
    public var expirationMonth: String
    public var expirationYear: String
    public var googleTransactionId: String
    public var imageUrl: String
    public var sourceCardLast4: String
    public var sourceCardType: String
    public var sourceDescription: String
    public var virtualCardType: String
    public var virtualCardLast4: String
    public var cardType: String {
        return virtualCardType
    }
    public var last4: String {
        return virtualCardLast4
    }
    public var token: String
    
    private enum CodingKeys : String, CodingKey {
        case bin
        case expirationMonth = "expiration-month"
        case expirationYear = "expiration-year"
        case googleTransactionId = "google-transaction-id"
        case imageUrl = "image-url"
        case sourceCardLast4 = "source-card-last-4"
        case sourceCardType = "source-card-type"
        case sourceDescription = "source-description"
        case virtualCardType = "virtual-card-type"
        case virtualCardLast4 = "virtual-card-last-4"
        case token
    }
}
