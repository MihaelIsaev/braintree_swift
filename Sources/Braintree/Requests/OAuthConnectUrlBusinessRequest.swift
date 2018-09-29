//
//  OAuthConnectUrlBusinessRequest.swift
//  Braintree
//
//  Created by Mihael Isaev on 28/09/2018.
//

import Foundation

public final class OAuthConnectUrlBusinessRequest: BraintreeContent {
    public static var key: String = ""
    
    private var parentRequest: OAuthConnectUrlRequest
    private var name: String
    private var registeredAs: String
    private var industry: String
    private var description: String
    private var streetAddress: String
    private var locality: String
    private var region: String
    private var postalCode: String
    private var country: String
    private var annualVolumeAmount: String
    private var averageTransactionAmount: String
    private var maximumTransactionAmount: String
    private var shipPhysicalGoods: Bool
    private var fulfillmentCompletedIn: Int64
    private var currency: String
    private var website: String
    private var establishedOn: String
    
    //    private enum CodingKeys : String, CodingKey {
    //        case
    //    }
}
