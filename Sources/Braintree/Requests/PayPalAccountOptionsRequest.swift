//
//  PayPalAccountOptionsRequest.swift
//  Braintree
//
//  Created by Mihael Isaev on 28/09/2018.
//

import Foundation
import Vapor

public final class PayPalAccountOptionsRequest: Content {
    private var makeDefault: Bool
    private var parent: PayPalAccountRequest
}
