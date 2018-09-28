//
//  CreditCard.swift
//  Braintree
//
//  Created by Mihael Isaev on 28/09/2018.
//

import Foundation

public class CreditCard {
    public enum CardType: String {
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
    
    public enum CustomerLocation: String {
        case international, us, unrecognized
    }
    
    public enum Commercial: String {
        case yes = "Yes"
        case no = "No"
        case unknown = "Unknown"
    }
    
    public enum Debit: String {
        case yes = "Yes"
        case no = "No"
        case unknown = "Unknown"
    }
    
    public enum DurbinRegulated: String {
        case yes = "Yes"
        case no = "No"
        case unknown = "Unknown"
    }
    
    public enum Healthcare: String {
        case yes = "Yes"
        case no = "No"
        case unknown = "Unknown"
    }
    
    public enum Payroll: String {
        case yes = "Yes"
        case no = "No"
        case unknown = "Unknown"
    }
    
    public enum Prepaid: String {
        case yes = "Yes"
        case no = "No"
        case unknown = "Unknown"
    }
    
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
    private var verification: CreditCardVerification
    
    public var xpirationDate: String {
        return expirationMonth + "/" + expirationYear
    }
    
    public var askedNumber: String {
        return bin + "******" + last4
    }
}
