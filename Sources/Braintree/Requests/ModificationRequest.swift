//
//  ModificationRequest.swift
//  Braintree
//
//  Created by Mihael Isaev on 28/09/2018.
//

import Foundation

public final class ModificationRequest: BraintreeContent {
    public static var key: String = ""
    
    private var amount: Double
    private var numberOfBillingCycles: Int64
    private var parent: ModificationsRequest
    private var quantity: Int64
    private var neverExpires: Bool
    
    //    private enum CodingKeys : String, CodingKey {
    //        case
    //    }
}
