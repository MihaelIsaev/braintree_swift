//
//  BusinessDetails.swift
//  Braintree
//
//  Created by Mihael Isaev on 28/09/2018.
//

import Foundation

public class BusinessDetails: Codable {
    private var dbaName: String
    private var legalName: String
    private var taxId: String
    private var address: Address
}
