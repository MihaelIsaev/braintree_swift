//
//  TransactionCloneRequest.swift
//  Braintree
//
//  Created by Mihael Isaev on 28/09/2018.
//

import Foundation

public final class TransactionCloneRequest: BraintreeContent {
    public static var key: String = ""
    
    private var amount: Double
    private var channel: String
    private var transactionOptionsCloneRequest: TransactionOptionsCloneRequest
    
    //    private enum CodingKeys : String, CodingKey {
    //        case
    //    }
}
