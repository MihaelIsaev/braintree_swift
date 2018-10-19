//
//  Address.swift
//  Braintree
//
//  Created by Mihael Isaev on 27/09/2018.
//

import Foundation

public final class Address: BraintreeContent {
    public static var key: String = "address"
    
    public var id: String
    public var customerId: String
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
    public var createdAt: Date?
    public var updatedAt: Date?
    
    private enum CodingKeys : String, CodingKey {
        case id
        case customerId = "customer-id"
        case firstName = "first-name"
        case lastName = "last-name"
        case company
        case streetAddress = "street-address"
        case extendedAddress = "extended-address"
        case locality
        case region
        case postalCode = "postal-code"
        case countryCodeAlpha2 = "country-code-alpha2"
        case countryCodeAlpha3 = "country-code-alpha3"
        case countryCodeNumeric = "country-code-numeric"
        case countryName = "country-name"
        case createdAt = "created-at"
        case updatedAt = "updated-at"
    }
}
