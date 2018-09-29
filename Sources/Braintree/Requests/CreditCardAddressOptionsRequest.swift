//
//  CreditCardAddressOptionsRequest.swift
//  Braintree
//
//  Created by Mihael Isaev on 28/09/2018.
//

import Foundation

public final class CreditCardAddressOptionsRequest: BraintreeContent {
    public static var key: String = ""
    public var updateExisting: Bool?
    
    private enum CodingKeys : String, CodingKey {
        case updateExisting = "update-existing"
    }
}
