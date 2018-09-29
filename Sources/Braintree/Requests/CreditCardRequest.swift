//
//  CreditCardRequest.swift
//  Braintree
//
//  Created by Mihael Isaev on 28/09/2018.
//

import Foundation

public final class CreditCardRequest: BraintreeContent {
    public static var key: String = "credit-card"
    
    public var cardholderName: String?
    public var cvv: String?
    public var expirationMonth: String?
    public var expirationYear: String?
    public var expirationDate: String?
    public var number: String?
    
    public var customerId: String
    public var billingAddress: CreditCardAddressRequest?
    public var billingAddressId: String?
    public var deviceData: String?
    public var deviceSessionId: String?
    public var fraudMerchantId: String?
    public var options: CreditCardOptionsRequest?
    public var paymentMethodToken: String?
    public var paymentMethodNonce: String?
    public var venmoSdkPaymentMethodCode: String?
    public var token: String?
    
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
    
    public init (cardholderName: String? = nil,
                    cvv: String? = nil,
                    expirationMonth: String? = nil,
                    expirationYear: String? = nil,
                    expirationDate: String? = nil,
                    number: String? = nil,
                    
                    customerId: String,
                    billingAddress: CreditCardAddressRequest? = nil,
                    billingAddressId: String? = nil,
                    deviceData: String? = nil,
                    deviceSessionId: String? = nil,
                    fraudMerchantId: String? = nil,
                    options: CreditCardOptionsRequest? = nil,
                    paymentMethodToken: String? = nil,
                    paymentMethodNonce: String? = nil,
                    venmoSdkPaymentMethodCode: String? = nil,
                    token: String? = nil) {
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
