//
//  MerchantAccountRequest.swift
//  Braintree
//
//  Created by Mihael Isaev on 28/09/2018.
//

import Foundation

public final class MerchantAccountRequest: BraintreeContent {
    public static var key: String = ""
    
    private var applicantDetails: ApplicantDetailsRequest
    private var individual: IndividualRequest
    private var business: BusinessRequest
    private var funding: FundingRequest
    private var tosAccepted: Bool
    private var masterMerchantAccountId: String
    private var id: String
    
    //    private enum CodingKeys : String, CodingKey {
    //        case
    //    }
}
