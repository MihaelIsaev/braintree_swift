//
//  CreditCardVerificationSearchRequest.swift
//  Braintree
//
//  Created by Mihael Isaev on 28/09/2018.
//

import Foundation
import Vapor

public final class CreditCardVerificationSearchRequest: Content {
    private var criteria: [String: SearchCriteria]
    private var multipleValueCriteria: [String: SearchCriteria]
    private var rangeCriteria: [String: [SearchCriteria]]
    private var keyValueCriteria: [String: String]
    
    //    private enum CodingKeys : String, CodingKey {
    //        case
    //    }
}
