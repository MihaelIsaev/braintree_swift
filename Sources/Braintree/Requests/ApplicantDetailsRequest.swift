//
//  ApplicantDetailsRequest.swift
//  Braintree
//
//  Created by Mihael Isaev on 28/09/2018.
//

import Foundation
import Vapor

public final class ApplicantDetailsRequest: Content {
    private var companyName: String
    private var firstName: String
    private var lastName: String
    private var email: String
    private var phone: String
    private var address: ApplicantDetailsAddressRequest
    private var dateOfBirth: String
    private var ssn: String
    private var taxId: String
    private var routingNumber: String
    private var accountNumber: String
    //private var parent: MerchantAccountRequest
}
