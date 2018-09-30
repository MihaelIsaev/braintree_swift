//
//  PayPalDetails.swift
//  Braintree
//
//  Created by Mihael Isaev on 28/09/2018.
//

import Foundation

public final class PayPalDetails: BraintreeContent {
    public static var key: String = ""
    
    private var payerEmail: String
    private var paymentId: String
    private var authorizationId: String
    private var token: String
    private var imageUrl: String
    private var debugId: String
    private var payeeId: String
    private var payeeEmail: String
    private var customField: String
    private var payerId: String
    private var payerFirstName: String
    private var payerLastName: String
    private var payerStatus: String
    private var sellerProtectionStatus: String
    private var captureId: String
    private var refundId: String
    private var transactionFeeAmount: String
    private var transactionFeeCurrencyIsoCode: String
    private var description: String
    
//    private enum CodingKeys : String, CodingKey {
//        case
//    }
}
