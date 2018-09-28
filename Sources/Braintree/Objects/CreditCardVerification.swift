//
//  CreditCardVerification.swift
//  Braintree
//
//  Created by Mihael Isaev on 28/09/2018.
//

import Foundation

public class CreditCardVerification: Codable {
    public enum Status {
        case failed, gatewayRejected, processorDeclined, unrecognized, verified
    }
    
    private var amount: Double
    private var avsErrorResponseCode: String
    private var avsPostalCodeResponseCode: String
    private var avsStreetAddressResponseCode: String
    private var currencyIsoCode: String
    private var cvvResponseCode: String
    private var gatewayRejectionReason: GatewayRejectionReason
    private var processorResponseCode: String
    private var processorResponseText: String
    private var merchantAccountId: String
    private var status: String
    private var id: String
    private var creditCard: CreditCard
    private var billingAddress: Address
    private var createdAt: Date
    private var riskData: RiskData
}
