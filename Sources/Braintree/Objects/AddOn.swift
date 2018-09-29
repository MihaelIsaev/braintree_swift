//
//  AddOn.swift
//  Braintree
//
//  Created by Mihael Isaev on 27/09/2018.
//

import Foundation

public class AddOn: Codable {
    var amount: Double?
    var currentBillingCycle: Int64?
    var description: String?
    var id: String
    var kind: String?
    var name: String
    var neverExpires: Bool?
    var numberOfBillingCycles: Int64?
    var quantity: Int64?
    var planId: String
    var updatedAt: Date?
    var createdAt: Date?
    
    private enum CodingKeys : String, CodingKey {
        case amount, currentBillingCycle = "current-billing-cycle", description, id, kind, name, neverExpires = "never-expires", numberOfBillingCycles = "number-of-billing-cycles", quantity, planId = "plan-id", updatedAt = "updated-at", createdAt = "created-at"
    }
    
    init (amount: Double? = nil,
          currentBillingCycle: Int64? = nil,
          description: String? = nil,
          id: String,
          kind: String? = nil,
          name: String,
          neverExpires: Bool? = nil,
          numberOfBillingCycles: Int64? = nil,
          quantity: Int64? = nil,
          planId: String) {
        self.amount = amount
        self.currentBillingCycle = currentBillingCycle
        self.description = description
        self.id = id
        self.kind = kind
        self.name = name
        self.neverExpires = neverExpires
        self.numberOfBillingCycles = numberOfBillingCycles
        self.quantity = quantity
        self.planId = planId
    }
}
