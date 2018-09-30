//
//  AccountUpdaterDailyReport.swift
//  Braintree
//
//  Created by Mihael Isaev on 29/09/2018.
//

import Foundation

public final class AccountUpdaterDailyReport: BraintreeContent {
    public static var key: String = ""
    
    public var reportDate: Date?
    public var reportUrl: String
    
    private enum CodingKeys : String, CodingKey {
        case reportDate = "report-date"
        case reportUrl = "report-url"
    }
}
