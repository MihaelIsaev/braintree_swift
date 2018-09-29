//
//  ApplePayCard.swift
//  Braintree
//
//  Created by Mihael Isaev on 28/09/2018.
//

import Foundation

public class ApplePayCard: PaymentMethod {
    public var imageUrl: String
    public var token: String
    public var isDefault: Bool?
    public var bin: String
    public var cardType: String
    public var paymentInstrumentName: String
    public var sourceDescription: String
    public var last4: String
    public var expirationMonth: String
    public var expirationYear: String
    public var expired: Bool
    public var customerId: String
    public var createdAt: Date?
    public var updatedAt: Date?
    public var subscriptions: [Subscription]
    
//    private enum CodingKeys : String, CodingKey {
//        case
//    }
}
