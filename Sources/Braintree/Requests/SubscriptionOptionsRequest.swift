//
//  SubscriptionOptionsRequest.swift
//  Braintree
//
//  Created by Mihael Isaev on 28/09/2018.
//

import Foundation

public final class SubscriptionOptionsRequest: BraintreeContent {
    public static var key: String = ""
    
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
