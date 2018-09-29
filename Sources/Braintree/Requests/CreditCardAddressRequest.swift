//
//  CreditCardAddressRequest.swift
//  Braintree
//
//  Created by Mihael Isaev on 28/09/2018.
//

import Foundation
import Vapor

public final class CreditCardAddressRequest: Content {
    public var updateExisting: Bool?
    
    public init (updateExisting: Bool? = nil) {
        self.updateExisting = updateExisting
    }
    
    private enum CodingKeys : String, CodingKey {
        case updateExisting = "update-existing"
    }
}
