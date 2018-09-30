//
//  MerchantAccount.swift
//  Braintree
//
//  Created by Mihael Isaev on 28/09/2018.
//

import Foundation

public final class MerchantAccount: BraintreeContent {
    public static var key: String = ""
    
    public enum Status: Int, Codable {
        case pending, active, suspended, unrecognized
    }
    
    public enum FundingDestination: String, Codable {
        case bank
        case mobilePhone = "mobile_phone"
        case email, unrecognized
    }
    
    private var id: String
    private var status: Status
    private var masterMerchantAccount: MerchantAccount
    private var individualDetails: IndividualDetails
    private var businessDetails: BusinessDetails
    private var fundingDetails: FundingDetails
    private var currencyIsoCode: String
    private var isDefault: Bool
    
//    private enum CodingKeys : String, CodingKey {
//        case
//    }
}
