//
//  AndroidPayDetails.swift
//  Braintree
//
//  Created by Mihael Isaev on 28/09/2018.
//

import Foundation

public class AndroidPayDetails: Codable {
    private var cardType: String
    private var last4: String
    private var sourceCardType: String
    private var sourceCardLast4: String
    private var sourceDescription: String
    private var virtualCardType: String
    private var virtualCardLast4: String
    private var expirationMonth: String
    private var expirationYear: String
    private var token: String
    private var googleTransactionId: String
    private var bin: String
    private var imageUrl: String
    
//    private enum CodingKeys : String, CodingKey {
//        case
//    }
}
