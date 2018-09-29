//
//  AddressRequest.swift
//  Braintree
//
//  Created by Mihael Isaev on 27/09/2018.
//

import Foundation
import Vapor

public final class AddressRequest: Content {
    public var firstName: String
    public var lastName: String
    public var company: String
    public var streetAddress: String
    public var extendedAddress: String
    public var locality: String
    public var region: String
    public var postalCode: String
    public var countryCodeAlpha2: String
    public var countryCodeAlpha3: String
    public var countryCodeNumeric: String
    public var countryName: String
    
    private enum CodingKeys : String, CodingKey {
        case firstName = "first-name", lastName = "last-name", company, streetAddress = "street-address", extendedAddress = "extended-address", locality, region, postalCode = "postal-code", countryCodeAlpha2 = "country-code-alpha2", countryCodeAlpha3 = "country-code-alpha3", countryCodeNumeric = "country-code-numeric", countryName = "country-name"
    }
}
