//
//  TransactionPayPalRequest.swift
//  Braintree
//
//  Created by Mihael Isaev on 28/09/2018.
//

import Foundation
import Vapor

public final class TransactionPayPalRequest: Content {
    private var parent: TransactionRequest
    private var payeeId: String
    private var payeeEmail: String
}
