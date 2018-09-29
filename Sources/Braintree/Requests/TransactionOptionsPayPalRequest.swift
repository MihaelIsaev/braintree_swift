//
//  TransactionOptionsPayPalRequest.swift
//  Braintree
//
//  Created by Mihael Isaev on 28/09/2018.
//

import Foundation

public final class TransactionOptionsPayPalRequest: BraintreeContent {
    public static var key: String = ""
    
    private var parent: TransactionOptionsRequest
    private var customField: String
    private var payeeId: String
    private var payeeEmail: String
    private var description: String
    private var supplementaryData: [String: String]
    
    //    private enum CodingKeys : String, CodingKey {
    //        case
    //    }
}
