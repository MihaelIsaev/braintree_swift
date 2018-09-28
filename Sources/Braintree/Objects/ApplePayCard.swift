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
    public var isDefault: Bool
    private var bin: String
    private var cardType: String
    private var paymentInstrumentName: String
    private var sourceDescription: String
    private var last4: String
    private var expirationMonth: String
    private var expirationYear: String
    private var expired: Bool
    public var customerId: String
    private var createdAt: Date
    private var updatedAt: Date
    public var subscriptions: [Subscription]
}
