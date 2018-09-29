//
//  CreditCardRequest.swift
//  Braintree
//
//  Created by Mihael Isaev on 28/09/2018.
//

import Foundation
import Vapor

public final class CreditCardRequest: Content {
    private var billingAddressRequest: CreditCardAddressRequest
    private var billingAddressId: String
    private var deviceData: String
    private var cardholderName: String
    private var customerId: String
    private var cvv: String
    private var deviceSessionId: String
    private var fraudMerchantId: String
    private var expirationDate: String
    private var expirationMonth: String
    private var expirationYear: String
    private var number: String
    private var optionsRequest: CreditCardOptionsRequest
    private var parent: CustomerRequest
    private var token: String
    private var paymentMethodToken: String
    private var paymentMethodNonce: String
    private var venmoSdkPaymentMethodCode: String
    
    //    private enum CodingKeys : String, CodingKey {
    //        case
    //    }
}
