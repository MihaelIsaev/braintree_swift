//
//  PaymentMethodRequest.swift
//  Braintree
//
//  Created by Mihael Isaev on 28/09/2018.
//

import Foundation

public final class PaymentMethodRequest: BraintreeContent {
    public static var key: String = ""
    
    private var paymentMethodNonce: String
    private var customerId: String
    private var token: String
    private var optionsRequest: PaymentMethodOptionsRequest
    private var billingAddressRequest: PaymentMethodAddressRequest
    private var billingAddressId: String
    private var deviceData: String
    private var cardholderName: String
    private var cvv: String
    private var deviceSessionId: String
    private var fraudMerchantId: String
    private var expirationDate: String
    private var expirationMonth: String
    private var expirationYear: String
    private var number: String
    private var paymentMethodToken: String
    private var paypalRefreshToken: String
    private var paypalVaultWithoutUpgrade: Bool
    private var venmoSdkPaymentMethodCode: String
    
    //    private enum CodingKeys : String, CodingKey {
    //        case
    //    }
}
