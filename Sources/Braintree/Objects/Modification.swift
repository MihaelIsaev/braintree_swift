//
//  Modification.swift
//  Braintree
//
//  Created by Mihael Isaev on 28/09/2018.
//

import Foundation

public class Modification: Codable {
    private var amount: Double
    private var currentBillingCycle: Int64
    private var description: String
    private var id: String
    private var kind: String
    private var quantity: Int64
    private var name: String
    private var neverExpires: Bool
    private var numberOfBillingCycles: Int64
    private var planId: String
    
//    private enum CodingKeys : String, CodingKey {
//        case
//    }
}
