//
//  TransactionThreeDSecurePassThruRequest.swift
//  Braintree
//
//  Created by Mihael Isaev on 28/09/2018.
//

import Foundation

public final class TransactionThreeDSecurePassThruRequest: BraintreeContent {
    public static var key: String = ""
    
    private var parent: TransactionRequest
    private var eciFlag: String
    private var cavv: String
    private var xid: String
    
    //    private enum CodingKeys : String, CodingKey {
    //        case
    //    }
}
