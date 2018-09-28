//
//  PaymentMethodForwardRequest.swift
//  Braintree
//
//  Created by Mihael Isaev on 28/09/2018.
//

import Foundation
import Vapor

@available(*, deprecated)
public final class PaymentMethodForwardRequest: Content {
    private var token: String
    private var receivingMerchantId: String
}
