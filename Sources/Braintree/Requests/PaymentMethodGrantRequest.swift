//
//  PaymentMethodGrantRequest.swift
//  Braintree
//
//  Created by Mihael Isaev on 28/09/2018.
//

import Foundation

public final class PaymentMethodGrantRequest: BraintreeContent {
    public static var key: String = ""
    
    private var sharedPaymentMethodToken: String
    private var allowVaulting: Bool
    private var includeBillingPostalCode: Bool
    private var revokeAfter: String
    
    //    private enum CodingKeys : String, CodingKey {
    //        case
    //    }
}
