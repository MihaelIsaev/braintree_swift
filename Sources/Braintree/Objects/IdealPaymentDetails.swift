//
//  IdealPaymentDetails.swift
//  Braintree
//
//  Created by Mihael Isaev on 28/09/2018.
//

import Foundation

public final class IdealPaymentDetails: BraintreeContent {
    public static var key: String = ""
    
    private var idealPaymentId: String
    private var idealTransactionId: String
    private var imageUrl: String
    private var maskedIban: String
    private var bic: String
    
//    private enum CodingKeys : String, CodingKey {
//        case
//    }
}
