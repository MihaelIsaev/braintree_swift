//
//  WebhookNotification.swift
//  Braintree
//
//  Created by Mihael Isaev on 28/09/2018.
//

import Foundation

public final class WebhookNotification: BraintreeContent {
    public static var key: String = ""
    
    public enum Kind: String, Codable {
        case check
        case partnerMerchantDisconnected = "partner_merchant_disconnected"
        case partnerMerchantConnected = "partner_merchant_connected"
        case partnerMerchantDeclined = "partner_merchant_declined"
        case oAuthAccessRevoked = "oauth_access_revoked"
        case connectedMerchantStatusTransitioned = "connected_merchant_status_transitioned"
        case connectedMerchantPaypalStatusChanged = "connected_merchant_paypal_status_changed"
        case subMerchantAccountApproved = "sub_merchant_account_approved"
        case subMerchantAccountDeclined = "sub_merchant_account_declined"
        case subscriptionCanceled = "subscription_canceled"
        case subscriptionChargedSuccessfully = "subscription_charged_successfully"
        case subscriptionChargedUnsuccessfully = "subscription_charged_unsuccessfully"
        case subscriptionExpired = "subscription_expired"
        case subscriptionTrialEnded = "subscription_trial_ended"
        case subscriptionWentActive = "subscription_went_active"
        case subscriptionWentPastDue = "subscription_went_past_due"
        case transactionDisbursed = "transaction_disbursed"
        case transactionSettled = "transaction_settled"
        case transactionSettlementDeclined = "transaction_settlement_declined"
        case disbursementException = "disbursement_exception"
        case disbursement = "disbursement"
        case disputeOpened = "dispute_opened"
        case disputeLost = "dispute_lost"
        case disputeWon = "dispute_won"
        case accountUpdaterDailyReport = "account_updater_daily_report"
        case ideaPaymentComplete = "ideal_payment_complete"
        case idealPaymentFailed = "ideal_payment_failed"
        case grantedPaymentInstrumentUpdate = "granted_payment_instrument_update"
        case unrecognized
    }
    
    public var errors: ValidationErrors
    public var merchantAccount: MerchantAccount
    public var subscription: Subscription
    public var transaction: Transaction
    public var disbursement: Disbursement
    public var dispute: Dispute
    public var kind: Kind
    public var timestamp: Date?
    public var partnerMerchant: PartnerMerchant
    public var oauthAccessRevocation: OAuthAccessRevocation
    public var accountUpdaterDailyReport: AccountUpdaterDailyReport
    public var connectedMerchantStatusTransitioned: ConnectedMerchantStatusTransitioned
    public var connectedMerchantPayPalStatusChanged: ConnectedMerchantPayPalStatusChanged
    public var idealPayment: IdealPayment
    public var grantedPaymentInstrumentUpdate: GrantedPaymentInstrumentUpdate
    public var sourceMerchantId: String
    public var message: String
    
    //TODO: rewrite with nested objects
//    private enum CodingKeys : String, CodingKey {
//        case errors, merchantAccount = "merchant-account", subscription, transaction, disbursement, dispute, kind, timestamp, partnerMerchant = "partner-merchant", oauthAccessRevocation = "", accountUpdaterDailyReport = "", connectedMerchantStatusTransitioned = "", connectedMerchantPayPalStatusChanged = "", idealPayment = "", grantedPaymentInstrumentUpdate = "", sourceMerchantId = "source-merchant-id", message
//    }
}
