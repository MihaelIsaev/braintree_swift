//
//  TransactionIndustryDataRequest.swift
//  Braintree
//
//  Created by Mihael Isaev on 28/09/2018.
//

import Foundation

public final class TransactionIndustryDataRequest: BraintreeContent {
    public static var key: String = ""
    
    private let parent: TransactionIndustryRequest
    private var folioNumber: String
    private var checkInDate: String
    private var checkOutDate: String
    private var travelPackage: String
    private var departureDate: String
    private var lodgingCheckInDate: String
    private var lodgingCheckOutDate: String
    private var lodgingName: String
    private var roomRate: String
    
    //    private enum CodingKeys : String, CodingKey {
    //        case
    //    }
}
