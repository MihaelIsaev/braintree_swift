//
//  CreditCardOptionsRequest.swift
//  Braintree
//
//  Created by Mihael Isaev on 28/09/2018.
//

import Foundation

public final class CreditCardOptionsRequest: BraintreeContent {
    public static var key: String = ""
    public var verifyCard: Bool?
    public var verificationAmount: String
    public var makeDefault: Bool?
    public var failOnDuplicatePaymentMethod: Bool?
    public var verificationMerchantAccountId: String
    public var updateExistingToken: String
    public var venmoSdkSession: String
    
    private enum CodingKeys : String, CodingKey {
        case verifyCard = "verify-card"
        case verificationAmount = "verification-amount"
        case makeDefault = "make-default"
        case failOnDuplicatePaymentMethod = "fail-on-duplicate-payment-method"
        case verificationMerchantAccountId = "verification-merchant-account-id"
        case updateExistingToken = "update-existing-token"
        case venmoSdkSession = "venmo-sdk-session"
    }
    
    public init (verifyCard: Bool? = nil,
                    verificationAmount: String,
                    makeDefault: Bool? = nil,
                    failOnDuplicatePaymentMethod: Bool? = nil,
                    verificationMerchantAccountId: String,
                    updateExistingToken: String,
                    venmoSdkSession: String) {
        self.verifyCard = verifyCard
        self.verificationAmount = verificationAmount
        self.makeDefault = makeDefault
        self.failOnDuplicatePaymentMethod = failOnDuplicatePaymentMethod
        self.verificationMerchantAccountId = verificationMerchantAccountId
        self.updateExistingToken = updateExistingToken
        self.venmoSdkSession = venmoSdkSession
    }
}
