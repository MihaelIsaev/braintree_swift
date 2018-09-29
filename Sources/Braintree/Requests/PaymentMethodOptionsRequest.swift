//
//  PaymentMethodOptionsRequest.swift
//  Braintree
//
//  Created by Mihael Isaev on 28/09/2018.
//

import Foundation
import Vapor

public final class PaymentMethodOptionsRequest: Content {
    private var makeDefault: Bool
    private var parent: PaymentMethodRequest
    private var verificationMerchantAccountId: String
    private var failOnDuplicatePaymentMethod: Bool
    private var verifyCard: Bool
    private var verificationAmount: String
    private var venmoSdkSession: String
    private var paymentMethodOptionsPayPalRequest: PaymentMethodOptionsPayPalRequest
    private var usBankAccountVerificationMethod: UsBankAccountVerification.VerificationMethod
    
    //    private enum CodingKeys : String, CodingKey {
    //        case
    //    }
}
