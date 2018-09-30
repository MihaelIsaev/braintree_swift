//
//  Transaction.swift
//  Braintree
//
//  Created by Mihael Isaev on 28/09/2018.
//

import Foundation

public final class Transaction: BraintreeContent {
    public static var key: String = ""
    
    public enum CreatedUsing: String, Codable {
        case fullInformation = "full_information"
        case token, unrecognized
    }
    
    public var isDisbursed: Bool {
        return false//TODO//getDisbursementDetails().isValid()
    }
    
    public enum EscrowStatus: Int, Codable {
        case held, holdPending, releasePending, released, refunded, unrecognized
    }
    
    public enum GatewayRejectionReason: String, Codable {
        case applicationIncomplete = "application_incomplete"
        case avs
        case avsAndCvv = "avs_and_cvv"
        case cvv
        case duplicate
        case fraud
        case threeDSecure = "three_d_secure"
        case unrecognized
    }
    
    public enum Source: String, Codable {
        case api
        case controlPanel = "control_panel"
        case recurring, unrecognized
    }
    
    public enum Status: Int, Codable {
        case authorizationExpired
        case authorized
        case authorizind
        case failed
        case gatewayRejected
        case processorDeclined
        case settled
        case settlementConfirmed
        case settlementDeclined
        case settlementPending
        case settling
        case submittedForSettlement
        case unrecognized
        case voided
    }
    
    public enum IndustryType: String, Codable {
        case lodging
        case travelCruise = "travel_cruise"
    }
    
    public enum TransactionType: String, Codable {
        case credit, sale, unrecognized
    }
    
    private var addOns: [AddOn]
    private var amount: Double
    private var avsErrorResponseCode: String
    private var avsPostalCodeResponseCode: String
    private var avsStreetAddressResponseCode: String
    private var billingAddress: Address
    private var channel: String
    private var createdAt: Date
    private var creditCard: CreditCard
    private var currencyIsoCode: String
    private var customer: Customer
    private var customFields: [String: String]
    private var cvvResponseCode: String
    private var disbursementDetails: DisbursementDetails
    private var disputes: [Dispute]
    private var descriptor: Descriptor
    private var discounts: [Discount]
    private var escrowStatus: EscrowStatus
    private var gatewayRejectionReason: GatewayRejectionReason
    private var id: String
    private var merchantAccountId: String
    private var orderId: String
    private var paypalDetails: PayPalDetails
    private var applePayDetails: ApplePayDetails
    private var androidPayDetails: AndroidPayDetails
    private var amexExpressCheckoutDetails: AmexExpressCheckoutDetails
    private var venmoAccountDetails: VenmoAccountDetails
    private var usBankAccountDetails: UsBankAccountDetails
    private var idealPaymentDetails: IdealPaymentDetails
    private var visaCheckoutCardDetails: VisaCheckoutCardDetails
    private var masterpassCardDetails: MasterpassCardDetails
    private var planId: String
    private var processorAuthorizationCode: String
    private var processorResponseCode: String
    private var processorResponseText: String
    private var processorSettlementResponseCode: String
    private var processorSettlementResponseText: String
    private var additionalProcessorResponse: String
    private var voiceReferralNumber: String
    private var purchaseOrderNumber: String
    private var recurring: Bool
    private var refundedTransactionId: String
    private var refundId: String
    private var refundIds: [String]
    private var samsungPayCardDetails: SamsungPayCardDetails
    private var settlementBatchId: String
    private var shippingAddress: Address
    private var status: Status
    private var statusHistory: [StatusEvent]
    private var subscriptionId: String
    private var subscription: Subscription
    private var subscriptionDetails: SubscriptionDetails
    private var taxAmount: Double
    private var taxExempt: Bool
    private var shippingAmount: Double
    private var discountAmount: Double
    private var shipsFromPostalCode: String
    private var type: TransactionType
    private var updatedAt: Date
    private var serviceFeeAmount: Double
    private var paymentInstrumentType: String
    private var riskData: RiskData
    private var threeDSecureInfo: ThreeDSecureInfo
    private var coinbaseDetails: CoinbaseDetails
    private var authorizedTransactionId: String
    private var partialSettlementTransactionIds: [String]
    private var authorizationAdjustments: [AuthorizationAdjustment]
    private var facilitatedDetails: FacilitatedDetails
    private var facilitatorDetails: FacilitatorDetails
    
//    private enum CodingKeys : String, CodingKey {
//        case
//    }
}
