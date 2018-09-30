//
//  Plan.swift
//  Braintree
//
//  Created by Mihael Isaev on 28/09/2018.
//

import Foundation

public final class Plan: BraintreeContent {
    public static var key: String = ""
    
    public enum DurationUnit: Int, Codable {
        case day, month, unrecognized
    }
    
    private var id: String
    private var addOns: [AddOn]
    private var merchantId: String
    private var billingDayOfMonth: Int64
    private var billingFrequency: Int64
    private var currencyIsoCode: String
    private var description: String
    private var discounts: [Discount]
    private var name: String
    private var numberOfBillingCycles: Int64
    private var price: Double
    private var trialPeriod: Bool
    private var trialDuration: Int64
    private var trialDurationUnit: DurationUnit
    private var createdAt: Date
    private var updatedAt: Date
    
//    private enum CodingKeys : String, CodingKey {
//        case
//    }
}
