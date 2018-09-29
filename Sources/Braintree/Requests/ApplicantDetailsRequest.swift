//
//  ApplicantDetailsRequest.swift
//  Braintree
//
//  Created by Mihael Isaev on 28/09/2018.
//

import Foundation

public final class ApplicantDetailsRequest: BraintreeContent {
    public static var key: String = ""
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
    private var parent: MerchantAccountRequest
    
    //    private enum CodingKeys : String, CodingKey {
    //        case
    //    }
}
