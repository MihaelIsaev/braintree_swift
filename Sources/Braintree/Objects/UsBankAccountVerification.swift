//
//  UsBankAccountVerification.swift
//  Braintree
//
//  Created by Mihael Isaev on 28/09/2018.
//

import Foundation

public final class UsBankAccountVerification: BraintreeContent {
    public static var key: String = ""
    
    public enum Status: String, Codable {
        case failed
        case getewayRejected = "gateway_rejected"
        case processorDeclined = "processor_declined"
        case unrecognized, verified, pending
    }
    
    public enum VerificationMethod: String, Codable {
        case tokenizedCheck = "tokenized_check"
        case networkCheck = "network_check"
        case independentCheck = "independent_check"
        case unrecognized
        case microTransfers = "micro_transfers"
    }
    
    public var usBankAccountVerificationMethod: VerificationMethod
    public var verificationDeterminedAt: Date?
    public var transactionGatewayRejectionReason: Transaction.GatewayRejectionReason
    public var processorResponseCode: String
    public var processorResponseText: String
    public var merchantAccountId: String
    public var usBankAccountVerificationStatus: Status
    public var id: String
    public var usBankAccount: UsBankAccount
    public var createdAt: Date?
    
    private enum CodingKeys : String, CodingKey {
        case usBankAccountVerificationMethod = "verification-method", verificationDeterminedAt = "verification-determined-at", transactionGatewayRejectionReason = "transaction-gateway-rejection-reason", processorResponseCode = "processor-response-code", processorResponseText = "processor-response-text", merchantAccountId = "merchant-account-id", usBankAccountVerificationStatus = "status", id, usBankAccount = "us-bank-account", createdAt = "created-at"
    }
}
