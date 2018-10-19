//
//  AddOn.swift
//  Braintree
//
//  Created by Mihael Isaev on 27/09/2018.
//

import Foundation

public final class AddOn: BraintreeContent {
    public static var key: String = "add-ons"
    
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
        case amount
        case createdAt = "created-at"
        case currentBillingCycle = "current-billing-cycle"
        case description, id, kind
        case merchantId = "merchant-id"
        case name
        case neverExpires = "never-expires"
        case numberOfBillingCycles = "number-of-billing-cycles"
        case quantity
        case updatedAt = "updated-at"
    }
}
