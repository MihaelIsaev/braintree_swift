//
//  AmexExpressCheckoutCard.swift
//  Braintree
//
//  Created by Mihael Isaev on 28/09/2018.
//

import Foundation

public class AmexExpressCheckoutCard: Codable {
    private var cardType: String
    private var token: String
    private var bin: String
    private var expirationMonth: String
    private var expirationYear: String
    private var cardMemberNumber: String
    private var cardMemberExpiryDate: String
    private var sourceDescription: String
    private var isDefault: Bool
    private var imageUrl: String
    private var customerId: String
    private var createdAt: Date
    private var updatedAt: Date
    //private var subscriptions: [Subscription] = []
}
