//
//  UnknownPaymentMethod.swift
//  Braintree
//
//  Created by Mihael Isaev on 28/09/2018.
//

import Foundation

public final class UnknownPaymentMethod: PaymentMethod {
    public static var key: String = ""
    
    public var token: String
    public var customerId: String
    public var isDefault: Bool?
    
    public var imageUrl: String
    
    public var subscriptions: [Subscription]
    
//    private enum CodingKeys : String, CodingKey {
//        case
//    }
}
