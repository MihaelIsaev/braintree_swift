//
//  Address.swift
//  Braintree
//
//  Created by Mihael Isaev on 27/09/2018.
//

import Foundation

public class Address: Codable {
    var company: String
    var countryCodeAlpha2: String
    var countryCodeAlpha3: String
    var countryCodeNumeric: String
    var countryName: String
    var customerId: String
    var extendedAddress: String
    var firstName: String
    var id: String
    var lastName: String
    var locality: String
    var postalCode: String
    var region: String
    var streetAddress: String
    var createdAt: Date?
    var updatedAt: Date?
    
    private enum CodingKeys : String, CodingKey {
        case company, countryCodeAlpha2 = "country-code-alpha2", countryCodeAlpha3 = "country-code-alpha3", countryCodeNumeric = "country-code-numeric", countryName = "country-name", customerId = "customer-id", extendedAddress = "extended-address", firstName = "first-name", id, lastName = "last-name", locality, postalCode = "postal-code", region, streetAddress = "street-address", createdAt = "created-at", updatedAt = "updated-at"
    }
    
    init(id: String,
         company: String,
         countryCodeAlpha2: String,
         countryCodeAlpha3: String,
         countryCodeNumeric: String,
         countryName: String,
         customerId: String,
         extendedAddress: String,
         firstName: String,
         lastName: String,
         locality: String,
         postalCode: String,
         region: String,
         streetAddress: String,
         createdAt: Date,
         updatedAt: Date) {
        self.id = id
        self.company = company
        self.countryCodeAlpha2 = countryCodeAlpha2
        self.countryCodeAlpha3 = countryCodeAlpha3
        self.countryCodeNumeric = countryCodeNumeric
        self.countryName = countryName
        self.customerId = customerId
        self.extendedAddress = extendedAddress
        self.firstName = firstName
        self.lastName = lastName
        self.locality = locality
        self.postalCode = postalCode
        self.region = region
        self.streetAddress = streetAddress
        self.createdAt = createdAt
        self.updatedAt = updatedAt
    }
}
