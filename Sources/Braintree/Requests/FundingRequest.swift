//
//  FundingRequest.swift
//  Braintree
//
//  Created by Mihael Isaev on 28/09/2018.
//

import Foundation
import Vapor

public final class FundingRequest: Content {
    private var destination: FundingDestination
    private var email: String
    private var mobilePhone: String
    private var routingNumber: String
    private var accountNumber: String
    private var descriptor: String
    private var parent: MerchantAccountRequest
}
