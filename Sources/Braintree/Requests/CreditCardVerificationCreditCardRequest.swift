//
//  CreditCardVerificationCreditCardRequest.swift
//  Braintree
//
//  Created by Mihael Isaev on 28/09/2018.
//

import Foundation

public final class CreditCardVerificationCreditCardRequest: BraintreeContent {
    public static var key: String = ""
    private var parent: CreditCardVerificationRequest
    private var cardholderName: String
    private var cvv: String
    private var expirationDate: String
    private var expirationMonth: String
    private var expirationYear: String
    private var number: String
    private var billingAddress: CreditCardVerificationBillingAddressRequest
    
    //    private enum CodingKeys : String, CodingKey {
    //        case
    //    }
}
