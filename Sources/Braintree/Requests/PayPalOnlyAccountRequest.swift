//
//  PayPalOnlyAccountRequest.swift
//  Braintree
//
//  Created by Mihael Isaev on 28/09/2018.
//

import Foundation
import Vapor

public final class PayPalOnlyAccountRequest: Content {
    private var clientId: String
    private var clientSecret: String
    private var parent: MerchantRequest
}
