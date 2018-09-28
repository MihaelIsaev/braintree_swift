//
//  TransactionApplePayCardRequest.swift
//  Braintree
//
//  Created by Mihael Isaev on 28/09/2018.
//

import Foundation
import Vapor

public final class TransactionApplePayCardRequest: Content {
    private var number: String
    private var cardholderName: String
    private var cryptogram: String
    private var expirationMonth: String
    private var expirationYear: String
    private var eciIndicator: String
    private var parent: TransactionRequest
}
