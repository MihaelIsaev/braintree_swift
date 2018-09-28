//
//  PaymentMethod.swift
//  Braintree
//
//  Created by Mihael Isaev on 28/09/2018.
//

import Foundation

public protocol PaymentMethod: Codable {
    var token: String { get }
    var isDefault: Bool? { get }
    var imageUrl: String { get }
    var customerId: String { get }
    var subscriptions: [Subscription] {get}
}
