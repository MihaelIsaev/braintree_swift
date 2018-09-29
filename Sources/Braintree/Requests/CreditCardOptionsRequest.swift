//
//  CreditCardOptionsRequest.swift
//  Braintree
//
//  Created by Mihael Isaev on 28/09/2018.
//

import Foundation
import Vapor

public final class CreditCardOptionsRequest: Content {
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
}
