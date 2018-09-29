//
//  SubscriptionTransactionRequest.swift
//  Braintree
//
//  Created by Mihael Isaev on 28/09/2018.
//

import Foundation

public final class SubscriptionTransactionRequest: BraintreeContent {
    public static var key: String = ""
    
    private var amount: Double
    private var subscriptionId: String
    private var subscriptionTransactionOptionsRequest: SubscriptionTransactionOptionsRequest
    
    //    private enum CodingKeys : String, CodingKey {
    //        case
    //    }
}
