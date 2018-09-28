//
//  PaymentMethodOptionsPayPalRequest.swift
//  Braintree
//
//  Created by Mihael Isaev on 28/09/2018.
//

import Foundation
import Vapor

public final class PaymentMethodOptionsPayPalRequest: Content {
    private var parent: PaymentMethodOptionsRequest
    private var shipping: PaymentMethodOptionsPayPalShippingRequest
    private var payeeEmail: String
    private var customField: String
    private var description: String
    private var orderId: String
    private var amount: Doublie
}
