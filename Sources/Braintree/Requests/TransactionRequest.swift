//
//  TransactionRequest.swift
//  Braintree
//
//  Created by Mihael Isaev on 28/09/2018.
//

import Foundation

public final class TransactionRequest: BraintreeContent {
    public static var key: String = ""
    
    private var amount: Double
    private var billingAddressRequest: TransactionAddressRequest
    private var deviceData: String
    private var creditCardRequest: TransactionCreditCardRequest
    private var paypalRequest: TransactionPayPalRequest
    private var channel: String
    private var customerId: String
    private var deviceSessionId: String
    private var fraudMerchantId: String
    private var customerRequest: CustomerRequest
    private var customFields: [String: String]
    private var merchantAccountId: String
    private var orderId: String
    private var paymentMethodToken: String
    private var purchaseOrderNumber: String
    private var recurring: Bool
    private var source: String
    private var shippingAddressId: String
    private var billingAddressId: String
    private var applePayCardRequest: TransactionApplePayCardRequest
    private var descriptorRequest: TransactionDescriptorRequest
    private var industryRequest: TransactionIndustryRequest
    private var shippingAddressRequest: TransactionAddressRequest
    private var transactionOptionsRequest: TransactionOptionsRequest
    private var threeDSecurePassThruRequest: TransactionThreeDSecurePassThruRequest
    private var taxAmount: Double
    private var taxExempt: Bool
    private var shippingAmount: Double
    private var discountAmount: Double
    private var shipsFromPostalCode: String
    private var type: Transaction.TransactionType
    private var venmoSdkPaymentMethodCode: String
    private var paymentMethodNonce: String
    private var serviceFeeAmount: Double
    
    private var threeDSecureToken: String
    private var threeDSecureTransaction: Bool
    
    private var sharedPaymentMethodToken: String
    private var sharedPaymentMethodNonce: String
    private var sharedCustomerId: String
    private var sharedShippingAddressId: String
    private var sharedBillingAddressId: String
    
    private var riskDataTransactionRequest: RiskDataTransactionRequest
    
    private var transactionLineItemRequests: [TransactionLineItemRequest]
    
    //    private enum CodingKeys : String, CodingKey {
    //        case
    //    }
}
