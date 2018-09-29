//
//  GrantedPaymentInstrumentUpdate.swift
//  Braintree
//
//  Created by Mihael Isaev on 28/09/2018.
//

import Foundation

public class GrantedPaymentInstrumentUpdate: Codable {
    private var grantOwnerMerchantId: String
    private var grantRecipientMerchantId: String
    private var paymentMethodNonce: String
    private var token: String
    private var updatedFields: [String]
    
//    private enum CodingKeys : String, CodingKey {
//        case
//    }
}
