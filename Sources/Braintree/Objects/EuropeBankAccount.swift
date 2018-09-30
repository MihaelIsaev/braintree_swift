//
//  EuropeBankAccount.swift
//  Braintree
//
//  Created by Mihael Isaev on 28/09/2018.
//

import Foundation

public final class EuropeBankAccount: BraintreeContent {
    public static var key: String = ""
    
    private var token: String
    private var isDefault: Bool
    private var maskedIban: String
    private var bic: String
    private var mandateReferenceNumber: String
    private var accountHolderName: String
    private var imageUrl: String
    private var customerId: String
    
    public var subscriptions: [Subscription] = []
    
//    private enum CodingKeys : String, CodingKey {
//        case
//    }
    
    public enum MandateType: String, Codable {
        case business, consumer
    }
}
