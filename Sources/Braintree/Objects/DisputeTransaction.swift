//
//  DisputeTransaction.swift
//  Braintree
//
//  Created by Mihael Isaev on 28/09/2018.
//

import Foundation

public final class DisputeTransaction: BraintreeContent {
    public static var key: String = ""
    
    private var amount: Double
    private var createdAt: Date
    private var id: String
    private var orderId: String
    private var paymentInstrumentSubtype: String
    private var purchaseOrderNumber: String
    
//    private enum CodingKeys : String, CodingKey {
//        case
//    }
}
