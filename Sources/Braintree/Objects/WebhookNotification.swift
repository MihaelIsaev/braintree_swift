//
//  WebhookNotification.swift
//  Braintree
//
//  Created by Mihael Isaev on 28/09/2018.
//

import Foundation

public class WebhookNotification: Codable {
    public enum Kind: String {
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
    
    private var errors: ValidationErrors
    private var merchantAccount: MerchantAccount
    private var subscription: Subscription
    private var transaction: Transaction
    private var disbursement: Disbursement
    private var dispute: Dispute
    private var kind: Kind
    private var timestamp: Date
    private var partnerMerchant: PartnerMerchant
    private var oauthAccessRevocation: OAuthAccessRevocation
    private var accountUpdaterDailyReport: AccountUpdaterDailyReport
    private var connectedMerchantStatusTransitioned: ConnectedMerchantStatusTransitioned
    private var connectedMerchantPayPalStatusChanged: ConnectedMerchantPayPalStatusChanged
    private var idealPayment: IdealPayment
    private var grantedPaymentInstrumentUpdate: GrantedPaymentInstrumentUpdate
    private var sourceMerchantId: String
}
