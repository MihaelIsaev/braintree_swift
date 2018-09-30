//
//  GrantedPaymentInstrumentUpdate.swift
//  Braintree
//
//  Created by Mihael Isaev on 28/09/2018.
//

import Foundation

public final class GrantedPaymentInstrumentUpdate: BraintreeContent {
    public static var key: String = ""
    
    private var grantOwnerMerchantId: String
    private var grantRecipientMerchantId: String
    private var paymentMethodNonce: String
    private var token: String
    private var updatedFields: [String]
    
//    private enum CodingKeys : String, CodingKey {
//        case
//    }
}
