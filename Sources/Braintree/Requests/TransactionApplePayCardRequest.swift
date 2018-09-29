//
//  TransactionApplePayCardRequest.swift
//  Braintree
//
//  Created by Mihael Isaev on 28/09/2018.
//

import Foundation

public final class TransactionApplePayCardRequest: BraintreeContent {
    public static var key: String = ""
    
    private var number: String
    private var cardholderName: String
    private var cryptogram: String
    private var expirationMonth: String
    private var expirationYear: String
    private var eciIndicator: String
    private var parent: TransactionRequest
    
    //    private enum CodingKeys : String, CodingKey {
    //        case
    //    }
}
