//
//  IndividualRequest.swift
//  Braintree
//
//  Created by Mihael Isaev on 28/09/2018.
//

import Foundation
import Vapor

public final class IndividualRequest: Content {
    private var firstName: String
    private var lastName: String
    private var email: String
    private var phone: String
    private var address: IndividualAddressRequest
    private var dateOfBirth: String
    private var ssn: String
    private var parent: MerchantAccountRequest
    
    //    private enum CodingKeys : String, CodingKey {
    //        case
    //    }
}
