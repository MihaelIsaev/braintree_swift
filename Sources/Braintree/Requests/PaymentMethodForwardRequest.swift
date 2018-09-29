//
//  PaymentMethodForwardRequest.swift
//  Braintree
//
//  Created by Mihael Isaev on 28/09/2018.
//

import Foundation

@available(*, deprecated)
public final class PaymentMethodForwardRequest: BraintreeContent {
    public static var key: String = ""
    
    private var token: String
    private var receivingMerchantId: String
    
    //    private enum CodingKeys : String, CodingKey {
    //        case
    //    }
}
