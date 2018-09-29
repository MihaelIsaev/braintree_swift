//
//  TransactionPayPalRequest.swift
//  Braintree
//
//  Created by Mihael Isaev on 28/09/2018.
//

import Foundation

public final class TransactionPayPalRequest: BraintreeContent {
    public static var key: String = ""
    
    private var parent: TransactionRequest
    private var payeeId: String
    private var payeeEmail: String
    
    //    private enum CodingKeys : String, CodingKey {
    //        case
    //    }
}
