//
//  DisputeTransaction.swift
//  Braintree
//
//  Created by Mihael Isaev on 28/09/2018.
//

import Foundation

public class DisputeTransaction: Codable {
    private var amount: Double
    private var createdAt: Date
    private var id: String
    private var orderId: String
    private var paymentInstrumentSubtype: String
    private var purchaseOrderNumber: String
}
