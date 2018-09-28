//
//  Address.swift
//  Braintree
//
//  Created by Mihael Isaev on 27/09/2018.
//

import Foundation

public class Address: Codable {
    /// Company name.
    var company: String
    /// The ISO 3166-1 alpha-2 country code specified in an address.
    /// The gateway only uses specific alpha-2 values.
    var countryCodeAlpha2: String
    
    /// The ISO 3166-1 alpha-3 country code specified in an address.
    /// The gateway only uses specific alpha-3 values.
    var countryCodeAlpha3: String
    
    /// The ISO 3166-1 numeric country code specified in an address.
    /// The gateway only uses specific numeric values.
    var countryCodeNumeric: String
    
    /// The country name specified in an address. We only accept specific country names.
    var countryName: String
    
    /// A string value representing an existing customer in
    /// your Vault that owns this address.
    /// Use this to look up a single customer.
    var customerId: String
    
    /// The extended address information—such as apartment or suite number.
    var extendedAddress: String
    
    /// The first name.
    var firstName: String
    
    /// The two-letter value for an address associated with a specific customer ID.
    /// The maximum number of addresses per customer is 50.
    var id: String
    
    /// The last name.
    var lastName: String
    
    /// The locality/city.
    var locality: String
    
    /// The postal code.
    var postalCode: String
    
    /// The state or province.
    var region: String
    
    /// The street address.
    var streetAddress: String
    
    /// The date/time the object was created.
    var createdAt: Date
    
    /// The date/time the object was last updated.
    var updatedAt: Date
    
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
