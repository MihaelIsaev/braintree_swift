//
//  SubscriptionTransactionOptionsRequest.swift
//  Braintree
//
//  Created by Mihael Isaev on 28/09/2018.
//

import Foundation
import Vapor

public final class SubscriptionTransactionOptionsRequest: Content {
    private var submitForSettlement: Bool
    private var parent: SubscriptionTransactionRequest
}
