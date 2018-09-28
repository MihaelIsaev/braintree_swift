//
//  TransactionOptionsPayPalRequest.swift
//  Braintree
//
//  Created by Mihael Isaev on 28/09/2018.
//

import Foundation
import Vapor

public final class TransactionOptionsPayPalRequest: Content {
    private var parent: TransactionOptionsRequest
    private var customField: String
    private var payeeId: String
    private var payeeEmail: String
    private var description: String
    private var supplementaryData: [String: String]
}
