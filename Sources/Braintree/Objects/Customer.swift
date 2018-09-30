//
//  Customer.swift
//  Braintree
//
//  Created by Mihael Isaev on 28/09/2018.
//

import Foundation

public final class Customer: BraintreeContent {
    public static var key: String = ""
    
    private var createdAt: Date
    private var updatedAt: Date
    private var company: String
    private var email: String
    private var fax: String
    private var firstName: String
    private var id: String
    private var lastName: String
    private var phone: String
    private var website: String
    private var customFields: [String: String] = [:]
    private var creditCards: [CreditCard]
    private var paypalAccounts: [PayPalAccount]
    private var applePayCards: [ApplePayCard]
    private var androidPayCards: [AndroidPayCard]
    private var amexExpressCheckoutCards: [AmexExpressCheckoutCard]
    private var coinbaseAccounts: [CoinbaseAccount]
    private var venmoAccounts: [VenmoAccount]
    private var visaCheckoutCards: [VisaCheckoutCard]
    private var masterpassCards: [MasterpassCard]
    private var usBankAccounts: [UsBankAccount]
    private var samsungPayCards: [SamsungPayCard]
    private var addresses: [Address]
    
//    private enum CodingKeys : String, CodingKey {
//        case
//    }
}
