//
//  Merchant.swift
//  Braintree
//
//  Created by Mihael Isaev on 28/09/2018.
//

import Foundation

public final class Merchant: BraintreeContent {
    public static var key: String = ""
    
    private var id: String
    private var email: String
    private var companyName: String
    private var countryCodeAlpha3: String
    private var countryCodeAlpha2: String
    private var countryCodeNumeric: String
    private var countryName: String
    private var credentials: OAuthCredentials
    private var merchantAccounts: [MerchantAccount]
    
//    private enum CodingKeys : String, CodingKey {
//        case
//    }
}
