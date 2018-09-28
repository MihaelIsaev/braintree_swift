//
//  AddressRequest.swift
//  Braintree
//
//  Created by Mihael Isaev on 27/09/2018.
//

import Foundation
import Vapor

public final class AddressRequest: Content {
    private var firstName: String
    private var lastName: String
    private var company: String
    private var region: String
    private var streetAddress: String
    private var extendedAddress: String
    private var countryCodeAlpha2: String
    private var countryCodeAlpha3: String
    private var countryCodeNumeric: String
    private var countryName: String
    private var locality: String
    private var postalCode: String
    
    private let tagName: String = "address"
    
    public init (firstName: String,
                    lastName: String,
                    company: String,
                    region: String,
                    streetAddress: String,
                    extendedAddress: String,
                    countryCodeAlpha2: String,
                    countryCodeAlpha3: String,
                    countryCodeNumeric: String,
                    countryName: String,
                    locality: String,
                    postalCode: String) {
        self.firstName = firstName
        self.lastName = lastName
        self.company = company
        self.region = region
        self.streetAddress = streetAddress
        self.extendedAddress = extendedAddress
        self.countryCodeAlpha2 = countryCodeAlpha2
        self.countryCodeAlpha3 = countryCodeAlpha3
        self.countryCodeNumeric = countryCodeNumeric
        self.countryName = countryName
        self.locality = locality
        self.postalCode = postalCode
    }
}
