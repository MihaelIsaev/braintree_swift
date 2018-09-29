//
//  FundingRequest.swift
//  Braintree
//
//  Created by Mihael Isaev on 28/09/2018.
//

import Foundation
import Vapor

public final class FundingRequest: Content {
    private var destination: MerchantAccount.FundingDestination
    private var email: String
    private var mobilePhone: String
    private var routingNumber: String
    private var accountNumber: String
    private var descriptor: String
    
        private enum CodingKeys : String, CodingKey {
            case destination, email, mobilePhone = "mobile-phone", routingNumber = "routing-number", accountNumber = "account-number", descriptor
        }
}
