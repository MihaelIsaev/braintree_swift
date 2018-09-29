//
//  PaymentMethodOptionsRequest.swift
//  Braintree
//
//  Created by Mihael Isaev on 28/09/2018.
//

import Foundation

public final class PaymentMethodOptionsRequest: BraintreeContent {
    public static var key: String = ""
    
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
