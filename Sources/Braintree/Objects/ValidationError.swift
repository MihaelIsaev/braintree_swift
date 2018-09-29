//
//  ValidationError.swift
//  Braintree
//
//  Created by Mihael Isaev on 29/09/2018.
//

import Foundation

public class ValidationError: Codable {
    private var attribute: String
    private var code: ValidationErrorCode
    private var message: String
    
//    private enum CodingKeys : String, CodingKey {
//        case
//    }
}