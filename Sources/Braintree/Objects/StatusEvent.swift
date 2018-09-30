//
//  StatusEvent.swift
//  Braintree
//
//  Created by Mihael Isaev on 28/09/2018.
//

import Foundation

public final class StatusEvent: BraintreeContent {
    public static var key: String = ""
    
    private var amount: Double
    private var status: Transaction.Status
    private var timestamp: Date
    private var source: Transaction.Source
    private var user: String
    
//    private enum CodingKeys : String, CodingKey {
//        case
//    }
}
