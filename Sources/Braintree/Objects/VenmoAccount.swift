//
//  VenmoAccount.swift
//  Braintree
//
//  Created by Mihael Isaev on 28/09/2018.
//

import Foundation

public class VenmoAccount: PaymentMethod {
    public var token: String
    private var username: String
    private var venmoUserId: String
    private var sourceDescription: String
    public var imageUrl: String
    private var createdAt: Date
    private var updatedAt: Date
    public var subscriptions: [Subscription]
    public var customerId: String
    public var isDefault: Bool
}
