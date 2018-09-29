//
//  ValidationErrors.swift
//  Braintree
//
//  Created by Mihael Isaev on 29/09/2018.
//

import Foundation

public class ValidationErrors: Codable {
    private var errors: [ValidationError]
    private var nestedErrors: [String: ValidationErrors]
    
//    private enum CodingKeys : String, CodingKey {
//        case
//    }
}
