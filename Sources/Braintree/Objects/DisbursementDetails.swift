//
//  DisbursementDetails.swift
//  Braintree
//
//  Created by Mihael Isaev on 28/09/2018.
//

import Foundation

public final class DisbursementDetails: BraintreeContent {
    public static var key: String = ""
    
    private var disbursementDate: Date
    private var settlementCurrencyIsoCode: String
    private var fundsHeld: Bool
    private var success: Bool
    private var settlementCurrencyExchangeRate: Double
    private var settlementAmount: Double
    
//    private enum CodingKeys : String, CodingKey {
//        case
//    }
}
