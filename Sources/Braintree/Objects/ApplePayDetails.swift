//
//  ApplePayDetails.swift
//  Braintree
//
//  Created by Mihael Isaev on 29/09/2018.
//

import Foundation

public class ApplePayDetails: Codable {
    private var cardType: String
    private var paymentInstrumentName: String
    private var sourceDescription: String
    private var cardholderName: String
    private var expirationMonth: String
    private var expirationYear: String
    private var last4: String
    private var token: String
    private var imageUrl: String
    
//    private enum CodingKeys : String, CodingKey {
//        case
//    }
}
