//
//  MerchantAccount.swift
//  Braintree
//
//  Created by Mihael Isaev on 28/09/2018.
//

import Foundation

public class MerchantAccount: Codable {
    public enum Status {
        case pending, active, suspended, unrecognized
    }
    
    public enum FundingDestination: String {
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
}
