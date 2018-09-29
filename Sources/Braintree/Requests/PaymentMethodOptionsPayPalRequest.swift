//
//  PaymentMethodOptionsPayPalRequest.swift
//  Braintree
//
//  Created by Mihael Isaev on 28/09/2018.
//

import Foundation

public final class PaymentMethodOptionsPayPalRequest: BraintreeContent {
    public static var key: String = ""
    
    private var parent: PaymentMethodOptionsRequest
    private var shipping: PaymentMethodOptionsPayPalShippingRequest
    private var payeeEmail: String
    private var customField: String
    private var description: String
    private var orderId: String
    private var amount: Double
    
    //    private enum CodingKeys : String, CodingKey {
    //        case
    //    }
}
