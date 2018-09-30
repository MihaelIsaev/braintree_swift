//
//  CoinbaseAccount.swift
//  Braintree
//
//  Created by Mihael Isaev on 28/09/2018.
//

import Foundation

public final class CoinbaseAccount: BraintreeContent {
    public static var key: String = ""
    
    private var userId: String
    private var userEmail: String
    private var userName: String
    private var token: String
    private var isDefault: Bool
    private var imageUrl: String
    private var customerId: String
    private var createdAt: Date
    private var updatedAt: Date
    private var subscriptions: [Subscription]
    
//    private enum CodingKeys : String, CodingKey {
//        case
//    }
}
