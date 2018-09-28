//
//  DisbursementDetails.swift
//  Braintree
//
//  Created by Mihael Isaev on 28/09/2018.
//

import Foundation

public class DisbursementDetails: Codable {
    private var disbursementDate: Date
    private var settlementCurrencyIsoCode: String
    private var fundsHeld: Bool
    private var success: Bool
    private var settlementCurrencyExchangeRate: Double
    private var settlementAmount: Double
}
