//
//  CustomerOptionsPayPalRequest.swift
//  Braintree
//
//  Created by Mihael Isaev on 28/09/2018.
//

import Foundation
import Vapor

public final class CustomerOptionsPayPalRequest: Content {
    private var parent: CustomerOptionsRequest
    private var shipping: CustomerOptionsPayPalShippingRequest
    private var payeeEmail: String
    private var customField: String
    private var description: String
    private var orderId: String
    private var amount: Double
    
    //    private enum CodingKeys : String, CodingKey {
    //        case
    //    }
}
