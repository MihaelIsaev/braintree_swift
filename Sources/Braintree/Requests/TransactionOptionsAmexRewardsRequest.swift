//
//  TransactionOptionsAmexRewardsRequest.swift
//  Braintree
//
//  Created by Mihael Isaev on 28/09/2018.
//

import Foundation

public final class TransactionOptionsAmexRewardsRequest: BraintreeContent {
    public static var key: String = ""
    
    private var parent: TransactionOptionsRequest
    private var points: String
    private var currencyAmount: String
    private var currencyIsoCode: String
    private var requestId: String
    
    //    private enum CodingKeys : String, CodingKey {
    //        case
    //    }
}
