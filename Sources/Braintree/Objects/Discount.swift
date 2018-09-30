//
//  Discount.swift
//  Braintree
//
//  Created by Mihael Isaev on 28/09/2018.
//

import Foundation

public final class Discount: BraintreeContent {
    public static var key: String = ""
    
    public var amount: Double?
    public var createdAt: Date?
    public var currentBillingCycle: Int?
    public var description: String
    public var id: String
    public var kind: String
    public var merchantId: String
    public var name: String
    public var neverExpires: Bool?
    public var numberOfBillingCycles: Int?
    public var quantity: Int?
    public var updatedAt: Date?
    
    private enum CodingKeys : String, CodingKey {
        case amount, createdAt = "created-at", currentBillingCycle = "current-billing-cycle", description, id, kind, merchantId = "merchant-id", name, neverExpires = "never-expires", numberOfBillingCycles = "number-of-billing-cycles", quantity, updatedAt = "updated-at"
    }
}
