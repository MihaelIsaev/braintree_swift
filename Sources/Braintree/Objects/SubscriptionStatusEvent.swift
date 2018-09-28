//
//  SubscriptionStatusEvent.swift
//  Braintree
//
//  Created by Mihael Isaev on 28/09/2018.
//

import Foundation

public class SubscriptionStatusEvent: Codable {
    private var balance: Double
    private var currencyIsoCode: String
    private var planId: String
    private var price: Double
    private var timestamp: Date
    private var source: Source
    private var status: Status
    private var user: String
}
