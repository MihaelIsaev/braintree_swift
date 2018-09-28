//
//  TransactionThreeDSecurePassThruRequest.swift
//  Braintree
//
//  Created by Mihael Isaev on 28/09/2018.
//

import Foundation
import Vapor

public final class TransactionThreeDSecurePassThruRequest: Content {
    private var parent: TransactionRequest
    private var eciFlag: String
    private var cavv: String
    private var xid: String
}
