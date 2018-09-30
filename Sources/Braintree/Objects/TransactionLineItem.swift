//
//  TransactionLineItem.swift
//  Braintree
//
//  Created by Mihael Isaev on 28/09/2018.
//

import Foundation

public final class TransactionLineItem: BraintreeContent {
    public static var key: String = ""
    
    public enum Kind: String, Codable {
        case debit, credit, unrecognized
    }
    
    private var quantity: Double
    private var name: String
    private var description: String
    private var kind: TransactionLineItem.Kind
    private var unitAmount: Double
    private var unitTaxAmount: Double
    private var totalAmount: Double
    private var discountAmount: Double
    private var unitOfMeasure: String
    private var productCode: String
    private var commodityCode: String
    private var url: String
    private var taxAmount: Double
    
//    private enum CodingKeys : String, CodingKey {
//        case
//    }
}
