//
//  EuropeBankAccount.swift
//  Braintree
//
//  Created by Mihael Isaev on 28/09/2018.
//

import Foundation

public class EuropeBankAccount: Codable {
    private var token: String
    private var isDefault: Bool
    private var maskedIban: String
    private var bic: String
    private var mandateReferenceNumber: String
    private var accountHolderName: String
    private var imageUrl: String
    private var customerId: String
    
    public var subscriptions: [Subscription] = []
    
    public enum MandateType: String {
        case business, consumer
    }
}
