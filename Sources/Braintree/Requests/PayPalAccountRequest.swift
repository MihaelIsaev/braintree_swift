//
//  PayPalAccountRequest.swift
//  Braintree
//
//  Created by Mihael Isaev on 28/09/2018.
//

import Foundation
import Vapor

public final class PayPalAccountRequest: Content {
    private var token: String
    private var optionsRequest: PayPalAccountOptionsRequest
}
