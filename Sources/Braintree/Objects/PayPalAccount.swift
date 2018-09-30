//
//  PayPalAccount.swift
//  Braintree
//
//  Created by Mihael Isaev on 28/09/2018.
//

import Foundation

public final class PayPalAccount: BraintreeContent {
    public static var key: String = ""
    
    private var email: String
    private var token: String
    private var billingAgreementId: String
    private var isDefault: Bool
    private var imageUrl: String
    private var payerId: String
    private var customerId: String
    private var createdAt: Date
    private var updatedAt: Date
    private var subscriptions: [Subscription]
    
//    private enum CodingKeys : String, CodingKey {
//        case
//    }
}
