//
//  DisputeSearchRequest.swift
//  Braintree
//
//  Created by Mihael Isaev on 28/09/2018.
//

import Foundation

public final class DisputeSearchRequest: BraintreeContent {
    public static var key: String = ""
    public var criteria: [String: [SearchCriteria]]
    public var rangeCriteria: [String: [SearchCriteria]]
    public var multiValueCriteria: [String: SearchCriteria]
    public var keyValueCriteria: [String: String]
    
    //    private enum CodingKeys : String, CodingKey {
    //        case
    //    }
}
