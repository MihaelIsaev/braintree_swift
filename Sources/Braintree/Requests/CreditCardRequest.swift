//
//  CreditCardRequest.swift
//  Braintree
//
//  Created by Mihael Isaev on 28/09/2018.
//

import Foundation
import Vapor

public final class CreditCardRequest: Content {
    public var cardholderName: String
    public var cvv: String
    public var expirationMonth: String
    public var expirationYear: String
    public var expirationDate: String
    public var number: String
    
    public var customerId: String
    public var billingAddress: CreditCardAddressRequest
    public var billingAddressId: String
    public var deviceData: String
    public var deviceSessionId: String
    public var fraudMerchantId: String
    public var options: CreditCardOptionsRequest
    public var paymentMethodToken: String
    public var paymentMethodNonce: String
    public var venmoSdkPaymentMethodCode: String
    public var token: String
    
    private enum CodingKeys : String, CodingKey {
        case cardholderName = "cardholder-name"
        case cvv
        case expirationMonth = "expiration-month"
        case expirationYear = "expiration-year"
        case expirationDate = "expiration-date"
        case number
        
        case customerId = "customer-id"
        case billingAddress = "billing-address"
        case billingAddressId = "billing-address-id"
        case deviceData = "device-data"
        case deviceSessionId = "device-session-id"
        case fraudMerchantId = "fraud-merchant-id"
        case options
        case paymentMethodToken = "payment-method-token"
        case paymentMethodNonce = "payment-method-nonce"
        case venmoSdkPaymentMethodCode = "venmo-sdk-payment-method-code"
        case token
    }
    
    public init (cardholderName: String,
                    cvv: String,
                    expirationMonth: String,
                    expirationYear: String,
                    expirationDate: String,
                    number: String,
                    
                    customerId: String,
                    billingAddress: CreditCardAddressRequest,
                    billingAddressId: String,
                    deviceData: String,
                    deviceSessionId: String,
                    fraudMerchantId: String,
                    options: CreditCardOptionsRequest,
                    paymentMethodToken: String,
                    paymentMethodNonce: String,
                    venmoSdkPaymentMethodCode: String,
                    token: String) {
        self.cardholderName = cardholderName
        self.cvv = cvv
        self.expirationMonth = expirationMonth
        self.expirationYear = expirationYear
        self.expirationDate = expirationDate
        self.number = number
        
        self.customerId = customerId
        self.billingAddress = billingAddress
        self.billingAddressId = billingAddressId
        self.deviceData = deviceData
        self.deviceSessionId = deviceSessionId
        self.fraudMerchantId = fraudMerchantId
        self.options = options
        self.paymentMethodToken = paymentMethodToken
        self.paymentMethodNonce = paymentMethodNonce
        self.venmoSdkPaymentMethodCode = venmoSdkPaymentMethodCode
        self.token = token
    }
}
