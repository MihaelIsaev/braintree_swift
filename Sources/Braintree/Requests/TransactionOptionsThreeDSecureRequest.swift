//
//  TransactionOptionsThreeDSecureRequest.swift
//  Braintree
//
//  Created by Mihael Isaev on 28/09/2018.
//

import Foundation
import Vapor

public final class TransactionOptionsThreeDSecureRequest: Content {
    private var parent: TransactionOptionsRequest
    private var required: Bool
}
