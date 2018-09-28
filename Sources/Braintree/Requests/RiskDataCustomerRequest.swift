//
//  RiskDataCustomerRequest.swift
//  Braintree
//
//  Created by Mihael Isaev on 28/09/2018.
//

import Foundation
import Vapor

public final class RiskDataCustomerRequest: Content {
    private var customerBrowser: String
    private var customerIP: String
    private var parent: CustomerRequest
}
