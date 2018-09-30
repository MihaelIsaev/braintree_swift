//
//  Disbursement.swift
//  Braintree
//
//  Created by Mihael Isaev on 28/09/2018.
//

import Foundation

public final class Disbursement: BraintreeContent {
    public static var key: String = ""
    
    public enum DisbursementType: Int, Codable {
        case unknown, credit, debit
    }
    
    private var id: String
    private var exceptionMessage: String
    private var disbursementDate: Date
    private var disbursementType: DisbursementType
    private var followUpAction: String
    private var transactionIds: [String]
    private var success: Bool
    private var retry: Bool
    private var amount: Double
    private var merchantAccount: MerchantAccount
    
//    private enum CodingKeys : String, CodingKey {
//        case
//    }
}
