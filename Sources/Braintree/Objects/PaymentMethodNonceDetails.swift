//
//  PaymentMethodNonceDetails.swift
//  Braintree
//
//  Created by Mihael Isaev on 28/09/2018.
//

import Foundation

public class PaymentMethodNonceDetails: Codable {
    private var cardType: String
    private var lastTwo: String
}
