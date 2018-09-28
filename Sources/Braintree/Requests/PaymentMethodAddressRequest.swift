//
//  PaymentMethodAddressRequest.swift
//  Braintree
//
//  Created by Mihael Isaev on 28/09/2018.
//

import Foundation
import Vapor

public final class PaymentMethodAddressRequest: Content {
    private var parent: PaymentMethodRequest
    private var optionsRequest: Request
}
