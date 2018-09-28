//
//  FundingDetails.swift
//  Braintree
//
//  Created by Mihael Isaev on 28/09/2018.
//

import Foundation

public class FundingDetails: Codable {
    private var destination: MerchantAccount.FundingDestination
    private var email: String
    private var mobilePhone: String
    private var routingNumber: String
    private var accountNumberLast4: String
    private var descriptor: String
}
