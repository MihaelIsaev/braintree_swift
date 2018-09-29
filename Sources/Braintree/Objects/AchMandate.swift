//
//  AchMandate.swift
//  Braintree
//
//  Created by Mihael Isaev on 29/09/2018.
//

import Foundation

public class AchMandate: Codable {
    private var text: String
    private var acceptedAt: Date
    
    private enum CodingKeys : String, CodingKey {
        case text, acceptedAt = "accepted-at"
    }
}
