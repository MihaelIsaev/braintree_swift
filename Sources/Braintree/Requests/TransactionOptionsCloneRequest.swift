//
//  TransactionOptionsCloneRequest.swift
//  Braintree
//
//  Created by Mihael Isaev on 28/09/2018.
//

import Foundation
import Vapor

public final class TransactionOptionsCloneRequest: Content {
    private var parent: TransactionCloneRequest
    private var submitForSettlement: Bool
}
