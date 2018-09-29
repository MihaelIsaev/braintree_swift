//
//  StatusEvent.swift
//  Braintree
//
//  Created by Mihael Isaev on 28/09/2018.
//

import Foundation

public class StatusEvent: Codable {
    private var amount: Double
    private var status: Transaction.Status
    private var timestamp: Date
    private var source: Transaction.Source
    private var user: String
    
//    private enum CodingKeys : String, CodingKey {
//        case
//    }
}
