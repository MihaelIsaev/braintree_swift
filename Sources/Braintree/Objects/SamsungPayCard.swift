//
//  SamsungPayCard.swift
//  Braintree
//
//  Created by Mihael Isaev on 28/09/2018.
//

import Foundation

public final class SamsungPayCard: PaymentMethod {
    public static var key: String = ""
    
    private var billingAddress: Address
    private var bin: String
    private var cardholderName: String
    private var cardType: String
    public var customerId: String
    private var customerLocation: String
    private var expirationMonth: String
    private var expirationYear: String
    public var isDefault: Bool?
    private var isVenmoSdk: Bool
    private var isExpired: Bool
    public var imageUrl: String
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
    public var subscriptions: [Subscription]
    public var token: String
    private var createdAt: Date?
    private var updatedAt: Date?
    
//    private enum CodingKeys : String, CodingKey {
//        case
//    }
}
