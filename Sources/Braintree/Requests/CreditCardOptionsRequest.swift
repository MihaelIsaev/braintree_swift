//
//  CreditCardOptionsRequest.swift
//  Braintree
//
//  Created by Mihael Isaev on 28/09/2018.
//

import Foundation
import Vapor

public final class CreditCardOptionsRequest: Content {
    private var parent: CreditCardRequest
    private var verificationMerchantAccountId: String
    private var failOnDuplicatePaymentMethod: Bool
    private var verifyCard: Bool
    private var verificationAmount: String
    private var makeDefault: Bool
    private var updateExistingToken: String
    private var venmoSdkSession: String
}
