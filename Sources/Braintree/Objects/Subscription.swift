//
//  Subscription.swift
//  Braintree
//
//  Created by Mihael Isaev on 28/09/2018.
//

import Foundation

public final class Subscription: BraintreeContent {
    public static var key: String = ""
    
    public enum DurationUnit: Int, Codable {
        case day, month, unrecognized
    }
    
    public enum Status: String, Codable {
        case active = "Active"
        case canceled = "Canceled"
        case expired = "Expired"
        case pastDue = "Past Due"
        case pending = "Pending"
        case unrecognized = "Unrecognized"
    }
    
    public enum Source: String, Codable {
        case api, recurring, unrecognized
        case controlPanel = "control_panel"
    }
    
    private var name: String
    private var addOns: [AddOn]
    private var balance: Double
    private var billingDayOfMonth: Int64
    private var billingPeriodEndDate: Date
    private var billingPeriodStartDate: Date
    private var currentBillingCycle: Int64
    private var daysPastDue: Int64
    private var descriptor: Descriptor
    private var description: String
    private var discounts: [Discount]
    private var failureCount: Int64
    private var createdAt: Date
    private var updatedAt: Date
    private var firstBillingDate: Date
    private var hasTrialPeriod: Bool
    private var id: String
    private var merchantAccountId: String
    private var neverExpires: Bool
    private var nextBillAmount: Double
    private var nextBillingDate: Date
    private var nextBillingPeriodAmount: Double
    private var numberOfBillingCycles: Int64
    private var paidThroughDate: Date
    private var paymentMethodToken: String
    private var planId: String
    private var price: Double
    private var status: Status
    private var statusHistory: [SubscriptionStatusEvent]
    private var transactions: [Transaction]
    private var trialDuration: Int64
    private var trialDurationUnit: DurationUnit
    
//    private enum CodingKeys : String, CodingKey {
//        case
//    }
}
