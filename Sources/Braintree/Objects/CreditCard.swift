//
//  CreditCard.swift
//  Braintree
//
//  Created by Mihael Isaev on 28/09/2018.
//

import Foundation

public final class CreditCard: BraintreeContent {
    public static var key: String = "credit-card"
    
    public enum CardType: String, Codable {
        case amex = "American Express"
        case carteBlanche = "Carte Blanche"
        case chinaUnionPay = "China UnionPay"
        case dinersClubInternational = "Diners Club"
        case discover = "Discover"
        case jcb = "JCB"
        case laser = "Laser"
        case ukMaestro = "UK Maestro"
        case maestro = "Maestro"
        case masterCard = "MasterCard"
        case solo = "Solo"
        case `switch` = "Switch"
        case visa = "Visa"
    }
    
    public enum CustomerLocation: String, Codable {
        case international, us, unrecognized
    }
    
    public enum Commercial: String, Codable {
        case yes = "Yes"
        case no = "No"
        case unknown = "Unknown"
    }
    
    public enum Debit: String, Codable {
        case yes = "Yes"
        case no = "No"
        case unknown = "Unknown"
    }
    
    public enum DurbinRegulated: String, Codable {
        case yes = "Yes"
        case no = "No"
        case unknown = "Unknown"
    }
    
    public enum Healthcare: String, Codable {
        case yes = "Yes"
        case no = "No"
        case unknown = "Unknown"
    }
    
    public enum Payroll: String, Codable {
        case yes = "Yes"
        case no = "No"
        case unknown = "Unknown"
    }
    
    public enum Prepaid: String, Codable {
        case yes = "Yes"
        case no = "No"
        case unknown = "Unknown"
    }
    
    public var billingAddress: Address?
    public var bin: String
    public var cardholderName: String
    public var cardType: String
    public var customerId: String
    public var customerLocation: String
    public var expirationMonth: String
    public var expirationYear: String
    public var isDefault: Bool
    public var isVenmoSdk: Bool
    public var isExpired: Bool
    public var imageUrl: String
    public var last4: String
    public var commercial: String
    public var debit: String
    public var durbinRegulated: String
    public var healthcare: String
    public var payroll: String
    public var prepaid: String
    public var productId: String
    public var countryOfIssuance: String
    public var issuingBank: String
    public var uniqueNumberIdentifier: String
    //public var subscriptions: [Subscription]
    public var token: String
    public var createdAt: Date?
    public var updatedAt: Date?
    //public var verification: CreditCardVerification
    
    private enum CodingKeys : String, CodingKey {
        case bin
        case cardholderName = "cardholder-name"
        case cardType = "card-type"
        case customerId = "customer-id"
        case isDefault = "default"
        case isVenmoSdk = "venmo-sdk"
        case expirationMonth = "expiration-month"
        case expirationYear = "expiration-year"
        case isExpired = "expired"
        case customerLocation = "customer-location"
        case last4 = "last-4"
        case uniqueNumberIdentifier = "unique-number-identifier"
        case token
        case createdAt = "created-at"
        case updatedAt = "updated-at"
        case billingAddress = "billing-address"
        case prepaid
        case payroll
        case durbinRegulated = "durbin-regulated"
        case debit
        case commercial
        case healthcare
        case countryOfIssuance = "country-of-issuance"
        case issuingBank = "issuing-bank"
        case productId = "product-id"
        case imageUrl = "image-url"
    }
    
    public var expirationDate: String {
        return expirationMonth + "/" + expirationYear
    }
    
    public var askedNumber: String {
        return bin + "******" + last4
    }
}
