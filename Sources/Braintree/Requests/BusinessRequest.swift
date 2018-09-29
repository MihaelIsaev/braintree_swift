//
//  BusinessRequest.swift
//  Braintree
//
//  Created by Mihael Isaev on 28/09/2018.
//

import Foundation

public final class BusinessRequest: BraintreeContent {
    public static var key: String = ""
    private var dbaName: String
    private var legalName: String
    private var address: BusinessAddressRequest
    private var taxId: String
    private var parent: MerchantAccountRequest
    
    //    private enum CodingKeys : String, CodingKey {
    //        case
    //    }
}
