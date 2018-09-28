//
//  TransactionOptionsRequest.swift
//  Braintree
//
//  Created by Mihael Isaev on 28/09/2018.
//

import Foundation
import Vapor

public final class TransactionOptionsRequest: Content {
    private var addBillingAddressToPaymentMethod: Bool
    private var holdInEscrow: Bool
    private var parent: TransactionRequest
    private var storeInVault: Bool
    private var storeInVaultOnSuccess: Bool
    private var storeShippingAddressInVault: Bool
    private var submitForSettlement: Bool
    private var venmoSdkSession: String
    private var payeeId: String
    private var payeeEmail: String
    private var skipAdvancedFraudChecking: Bool
    private var skipAvs: Bool
    private var skipCvv: Bool
    private var transactionOptionsPayPalRequest: TransactionOptionsPayPalRequest
    private var transactionOptionsAmexRewardsRequest: TransactionOptionsAmexRewardsRequest
    private var transactionOptionsThreeDSecureRequest: TransactionOptionsThreeDSecureRequest
    private var transactionOptionsVenmoRequest: TransactionOptionsVenmoRequest
}
