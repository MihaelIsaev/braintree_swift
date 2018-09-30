//
//  CreditCardVerification.swift
//  Braintree
//
//  Created by Mihael Isaev on 28/09/2018.
//

import Foundation

public final class CreditCardVerification: BraintreeContent {
    public static var key: String = ""
    
    public enum Status: Int, Codable {
        case failed, gatewayRejected, processorDeclined, unrecognized, verified
    }
    
    private var amount: Double
    private var avsErrorResponseCode: String
    private var avsPostalCodeResponseCode: String
    private var avsStreetAddressResponseCode: String
    private var currencyIsoCode: String
    private var cvvResponseCode: String
    private var gatewayRejectionReason: Transaction.GatewayRejectionReason
    private var processorResponseCode: String
    private var processorResponseText: String
    private var merchantAccountId: String
    private var status: String
    private var id: String
    private var creditCard: CreditCard
    private var billingAddress: Address
    private var createdAt: Date
    private var riskData: RiskData
    
//    private enum CodingKeys : String, CodingKey {
//        case
//    }
}
