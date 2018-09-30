//
//  AndroidPayCard.swift
//  Braintree
//
//  Created by Mihael Isaev on 27/09/2018.
//

import Foundation

public final class AndroidPayCard: PaymentMethod {
    public static var key: String = ""
    
    public var bin: String
    public var cardType: String
    public var last4: String
    public var expirationMonth: String
    public var expirationYear: String
    public var token: String
    public var paymentInstrumentName: String
    public var sourceDescription: String
    public var isDefault: Bool?
    public var isExpired: Bool?
    public var imageUrl: String
    public var customerId: String
    public var createdAt: Date?
    public var updatedAt: Date?
    public var subscriptions: [Subscription] = []
    
    private enum CodingKeys : String, CodingKey {
        case bin
        case cardType = "card-type"
        case last4 = "last-4"
        case expirationMonth = "expiration-month"
        case expirationYear = "expiration-year"
        case token
        case paymentInstrumentName = "payment-instrument-name"
        case sourceDescription = "source-description"
        case isDefault = "default"
        case isExpired = "expired"
        case imageUrl = "image-url"
        case customerId = "customer-id"
        case createdAt = "created-at"
        case updatedAt = "updated-at"
        case subscriptions
    }
}
