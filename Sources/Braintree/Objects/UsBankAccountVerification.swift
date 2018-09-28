//
//  UsBankAccountVerification.swift
//  Braintree
//
//  Created by Mihael Isaev on 28/09/2018.
//

import Foundation

public class UsBankAccountVerification: Codable {
    public enum Status: String {
        case failed
        case getewayRejected = "gateway_rejected"
        case processorDeclined = "processor_declined"
        case unrecognized, verified, pending
    }
    
    public enum VerificationMethod: String {
        case tokenizedCheck = "tokenized_check"
        case networkCheck = "network_check"
        case independentCheck = "independent_check"
        case unrecognized
        case microTransfers = "micro_transfers"
    }
    
    private var id: String
    private var status: Status
    private var verificationMethod: VerificationMethod
    private var processorResponseCode: String
    private var processorResponseText: String
    private var verificationDeterminedAt: Date
    private var createdAt: Date
    private var gatewayRejectionReason: GatewayRejectionReason
    private var usBankAccount: UsBankAccount
}
