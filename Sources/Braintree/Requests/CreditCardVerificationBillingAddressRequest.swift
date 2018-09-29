//
//  CreditCardVerificationBillingAddressRequest.swift
//  Braintree
//
//  Created by Mihael Isaev on 28/09/2018.
//

import Foundation

public final class CreditCardVerificationBillingAddressRequest: BraintreeContent {
    public static var key: String = ""
    private var parent: CreditCardVerificationCreditCardRequest
    private var company: String
    private var countryCodeAlpha2: String
    private var countryCodeAlpha3: String
    private var countryCodeNumeric: String
    private var countryName: String
    private var extendedAddress: String
    private var firstName: String
    private var lastName: String
    private var locality: String
    private var postalCode: String
    private var region: String
    private var streetAddress: String
    
    //    private enum CodingKeys : String, CodingKey {
    //        case
    //    }
}
