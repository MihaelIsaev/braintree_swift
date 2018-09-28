//
//  ClientTokenOptionsRequest.swift
//  Braintree
//
//  Created by Mihael Isaev on 28/09/2018.
//

import Foundation
import Vapor

public final class ClientTokenOptionsRequest: Content {
    private var makeDefault: Bool
    private var verifyCard: Bool
    private var failOnDuplicatePaymentMethod: Bool
    private var parent: ClientTokenRequest
}
