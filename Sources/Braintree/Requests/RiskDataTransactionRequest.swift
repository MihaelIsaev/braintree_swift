//
//  RiskDataTransactionRequest.swift
//  Braintree
//
//  Created by Mihael Isaev on 28/09/2018.
//

import Foundation

public final class RiskDataTransactionRequest: BraintreeContent {
    public static var key: String = ""
    
    private var customerBrowser: String
    private var customerIP: String
    private var parent: TransactionRequest
    
    //    private enum CodingKeys : String, CodingKey {
    //        case
    //    }
}
