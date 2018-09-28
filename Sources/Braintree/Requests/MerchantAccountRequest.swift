//
//  MerchantAccountRequest.swift
//  Braintree
//
//  Created by Mihael Isaev on 28/09/2018.
//

import Foundation
import Vapor

public final class MerchantAccountRequest: Content {
    private var applicantDetails: ApplicantDetailsRequest
    private var individual: IndividualRequest
    private var business: BusinessRequest
    private var funding: FundingRequest
    private var tosAccepted: Bool
    private var masterMerchantAccountId: String
    private var id: String
}
