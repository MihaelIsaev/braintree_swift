//
//  UsBankAccount.swift
//  Braintree
//
//  Created by Mihael Isaev on 28/09/2018.
//

import Foundation

public class UsBankAccount: PaymentMethod {
    private var routingNumber: String
    private var last4: String
    private var accountType: String
    private var accountHolderName: String
    public var token: String
    public var imageUrl: String
    private var bankName: String
    public var subscriptions: [Subscription]
    public var customerId: String
    public var isDefault: Bool
    private var achMandate: AchMandate
    private var verifications: [UsBankAccountVerification]
    private var isVerified: Bool
}
