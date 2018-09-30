//
//  IdealPayment.swift
//  Braintree
//
//  Created by Mihael Isaev on 28/09/2018.
//

import Foundation

public final class IdealPayment: BraintreeContent {
    public static var key: String = ""
    
    private var id: String
    private var idealTransactionId: String
    private var imageUrl: String
    private var status: String
    private var currency: String
    private var amount: Double
    private var orderId: String
    private var issuer: String
    private var approvalUrl: String
    private var ibanBankAccount: IbanBankAccount
    
//    private enum CodingKeys : String, CodingKey {
//        case
//    }
}
