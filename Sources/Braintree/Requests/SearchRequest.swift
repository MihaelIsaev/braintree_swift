//
//  SearchRequest.swift
//  Braintree
//
//  Created by Mihael Isaev on 28/09/2018.
//

import Foundation
import Vapor

public final class SearchRequest: Content {
    private var criteria: [String: [SearchCriteria]]
    private var rangeCriteria: [String: [SearchCriteria]]
    private var multiValueCriteria: [String: SearchCriteria]
    private var keyValueCriteria: [String: String]
}
