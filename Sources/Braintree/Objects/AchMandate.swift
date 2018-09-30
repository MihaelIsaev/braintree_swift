//
//  AchMandate.swift
//  Braintree
//
//  Created by Mihael Isaev on 29/09/2018.
//

import Foundation

public final class AchMandate: BraintreeContent {
    public static var key: String = ""
    
    public var text: String
    public var acceptedAt: Date
    
    private enum CodingKeys : String, CodingKey {
        case text
        case acceptedAt = "accepted-at"
    }
}
