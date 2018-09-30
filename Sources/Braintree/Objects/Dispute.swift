//
//  Dispute.swift
//  Braintree
//
//  Created by Mihael Isaev on 28/09/2018.
//

import Foundation

public final class Dispute: BraintreeContent {
    public static var key: String = ""
    
    public enum Status: Int, Codable {
        case open, lost, won, unrecognized, accepted, disputed, expired
    }
    
    public enum Reason: Int, Codable {
        case cancelledRecurringTransaction
        case creditNotProcessed
        case duplicate
        case fraud
        case general
        case invalidAccount
        case notRecognized
        case productNotReceived
        case productUnsatisfactory
        case transactionAmountDiffers
        case retrieval
    }
    
    public enum Kind: Int, Codable {
        case chargeback, preArbitration, retrieval, unrecognized
    }
    
    private var createdAt: Date
    private var receivedDate: Date
    private var replyByDate: Date
    private var openedDate: Date
    private var updatedAt: Date
    private var wonDate: Date
    private var evidence: [DisputeEvidence]
    private var statusHistory: [DisputeStatusHistory]
    private var caseNumber: String
    private var currencyIsoCode: String
    private var id: String
    private var forwardedComments: String
    private var merchantAccountId: String
    private var originalDisputeId: String
    private var reasonCode: String
    private var reasonDescription: String
    private var referenceNumber: String
    private var reason: Reason
    private var status: Status
    private var kind: Kind
    private var amount: Double
    private var disputedAmount: Double
    private var wonAmount: Double
    private var transactionDetails: TransactionDetails
    private var transaction: DisputeTransaction
    
//    private enum CodingKeys : String, CodingKey {
//        case
//    }
}
