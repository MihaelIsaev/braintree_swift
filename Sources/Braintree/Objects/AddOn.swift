//
//  AddOn.swift
//  Braintree
//
//  Created by Mihael Isaev on 27/09/2018.
//

import Foundation

public class AddOn: Codable {
    /// The add-on amount
    var amount: Double
    
    /// The add-on's current billing cycle.
    /// It is incremented each time the add-on is successfully applied.
    /// Its value will always be nil for add-ons that are not attached to a subscription.
    var currentBillingCycle: Int64?
    
    /// A description of the add-on.
    /// Its value will always be nil for add-ons that are attached to a subscription.
    var description: String?
    
    /// The add-on identifier.
    /// Length and format of gateway-generated tokens and IDs may change at any time.
    var id: String
    
    /// The value that defines whether the modification being applied
    /// to a plan or subscription is an add-on or a discount.
    /// Its value will always be nil for add-ons that are attached to a subscription.
    var kind: String?
    
    /// The name of the add-on.
    var name: String
    
    /// A value indicating whether an add-on's billing cycle
    /// is set to never expire instead of running
    /// for a specific number of billing cycles.
    var neverExpires: Bool
    
    /// Specifies the number of billing cycles of the add-on.
    var numberOfBillingCycles: Int64
    
    /// The number of times this particular add-on is applied to the subscription.
    /// Its value will always be nil for add-ons that are not attached to a subscription.
    var quantity: Int64?
    
    init (amount: Double,
          currentBillingCycle: Int64? = nil,
          description: String? = nil,
          id: String,
          kind: String? = nil,
          name: String,
          neverExpires: Bool,
          numberOfBillingCycles: Int64,
          quantity: Int64? = nil) {
        self.amount = amount
        self.currentBillingCycle = currentBillingCycle
        self.description = description
        self.id = id
        self.kind = kind
        self.name = name
        self.neverExpires = neverExpires
        self.numberOfBillingCycles = numberOfBillingCycles
        self.quantity = quantity
    }
}
