//
//  UsBankAccountDetails.swift
//  Braintree
//
//  Created by Mihael Isaev on 28/09/2018.
//

import Foundation

public class UsBankAccountDetails: Codable {
    private var routingNumber: String
    private var last4: String
    private var accountType: String
    private var accountHolderName: String
    private var token: String
    private var imageUrl: String
    private var bankName: String
    private var achMandate: AchMandate
}
