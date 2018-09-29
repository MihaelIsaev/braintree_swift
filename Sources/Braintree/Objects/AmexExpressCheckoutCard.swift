//
//  AmexExpressCheckoutCard.swift
//  Braintree
//
//  Created by Mihael Isaev on 28/09/2018.
//

import Foundation

public class AmexExpressCheckoutCard: PaymentMethod {
    public var cardType: String
    public var token: String
    public var bin: String
    public var expirationMonth: String
    public var expirationYear: String
    public var cardMemberNumber: String
    public var cardMemberExpiryDate: String
    public var sourceDescription: String
    public var isDefault: Bool?
    public var imageUrl: String
    public var customerId: String
    public var createdAt: Date?
    public var updatedAt: Date?
    public var subscriptions: [Subscription] = []
    
//    private enum CodingKeys : String, CodingKey {
//        case
//    }
}
