//
//  PaymentMethodGrantRequest.swift
//  Braintree
//
//  Created by Mihael Isaev on 28/09/2018.
//

import Foundation
import Vapor

public final class PaymentMethodGrantRequest: Content {
    private var sharedPaymentMethodToken: String
    private var allowVaulting: Bool
    private var includeBillingPostalCode: Bool
    private var revokeAfter: String
}
