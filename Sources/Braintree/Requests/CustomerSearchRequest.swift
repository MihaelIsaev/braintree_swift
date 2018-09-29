//
//  CustomerSearchRequest.swift
//  Braintree
//
//  Created by Mihael Isaev on 28/09/2018.
//

import Foundation
import Vapor

public final class CustomerSearchRequest: Content {
    public var criteria: [String: [SearchCriteria]]
    public var rangeCriteria: [String: [SearchCriteria]]
    public var multiValueCriteria: [String: SearchCriteria]
    public var keyValueCriteria: [String: String]
    
    //    private enum CodingKeys : String, CodingKey {
    //        case
    //    }
}
