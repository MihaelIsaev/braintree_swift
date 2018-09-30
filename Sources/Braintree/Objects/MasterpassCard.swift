//
//  MasterpassCard.swift
//  Braintree
//
//  Created by Mihael Isaev on 28/09/2018.
//

import Foundation

public final class MasterpassCard: BraintreeContent {
    public static var key: String = ""
    
    private var billingAddress: Address
    private var bin: String
    private var cardholderName: String
    private var cardType: String
    private var customerId: String
    private var customerLocation: String
    private var expirationMonth: String
    private var expirationYear: String
    private var isDefault: Bool
    private var isVenmoSdk: Bool
    private var isExpired: Bool
    private var imageUrl: String
    private var last4: String
    private var commercial: String
    private var debit: String
    private var durbinRegulated: String
    private var healthcare: String
    private var payroll: String
    private var prepaid: String
    private var productId: String
    private var countryOfIssuance: String
    private var issuingBank: String
    private var uniqueNumberIdentifier: String
    private var subscriptions: [Subscription]
    private var token: String
    private var createdAt: Date
    private var updatedAt: Date
    
//    private enum CodingKeys : String, CodingKey {
//        case
//    }
}
