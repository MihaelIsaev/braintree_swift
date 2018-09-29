//
//  SubscriptionRequest.swift
//  Braintree
//
//  Created by Mihael Isaev on 28/09/2018.
//

import Foundation

public final class SubscriptionRequest: BraintreeContent {
    public static var key: String = ""
    
    private var addOnsRequest: ModificationsRequest
    private var billingDayOfMonth: Int64
    private var descriptorRequest: SubscriptionDescriptorRequest
    private var discountsRequest: ModificationsRequest
    private var firstBillingDate: Date
    private var hasTrialPeriod: Bool
    private var id: String
    private var merchantAccountId: String
    private var neverExpires: Bool
    private var numberOfBillingCycles: Int64
    private var options: SubscriptionOptionsRequest
    private var paymentMethodToken: String
    private var paymentMethodNonce: String
    private var planId: String
    private var price: Double
    private var trialDuration: Int64
    private var trialDurationUnit: Subscription.DurationUnit
    
    //    private enum CodingKeys : String, CodingKey {
    //        case
    //    }
}
