//
//  AmexExpressCheckoutDetails.swift
//  Braintree
//
//  Created by Mihael Isaev on 28/09/2018.
//

import Foundation

public class AmexExpressCheckoutDetails: Codable {
    private var cardType: String
    private var token: String
    private var bin: String
    private var expirationMonth: String
    private var expirationYear: String
    private var cardMemberNumber: String
    private var cardMemberExpiryDate: String
    private var imageUrl: String
    private var sourceDescription: String
}
