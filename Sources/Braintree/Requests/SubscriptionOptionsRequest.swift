//
//  SubscriptionOptionsRequest.swift
//  Braintree
//
//  Created by Mihael Isaev on 28/09/2018.
//

import Foundation
import Vapor

public final class SubscriptionOptionsRequest: Content {
    private var doNotInheritAddOnsOrDiscounts: Bool
    private var parent: SubscriptionRequest
    private var prorateCharges: Bool
    private var replaceAllAddOnsAndDiscounts: Bool
    private var revertSubscriptionOnProrationFailure: Bool
    private var startImmediately: Bool
    private var paypal: SubscriptionOptionsPayPalRequest
    
    //    private enum CodingKeys : String, CodingKey {
    //        case
    //    }
}
