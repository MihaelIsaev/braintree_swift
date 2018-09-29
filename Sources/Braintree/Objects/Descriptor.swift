//
//  Descriptor.swift
//  Braintree
//
//  Created by Mihael Isaev on 28/09/2018.
//

import Foundation

public class Descriptor: Codable {
    private var name: String
    private var phone: String
    private var url: String
    
//    private enum CodingKeys : String, CodingKey {
//        case
//    }
    
    public init (name: String, phone: String, url: String) {
        self.name = name
        self.phone = phone
        self.url = url
    }
}
