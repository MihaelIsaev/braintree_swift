//
//  SubscriptionStatusEvent.swift
//  Braintree
//
//  Created by Mihael Isaev on 28/09/2018.
//

import Foundation

public final class SubscriptionStatusEvent: BraintreeContent {
    public static var key: String = ""
    
    private var balance: Double
    private var currencyIsoCode: String
    private var planId: String
    private var price: Double
    private var timestamp: Date
    private var source: Subscription.Source
    private var status: Subscription.Status
    private var user: String
    
//    private enum CodingKeys : String, CodingKey {
//        case
//    }
}
