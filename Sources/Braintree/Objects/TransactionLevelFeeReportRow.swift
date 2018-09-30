//
//  TransactionLevelFeeReportRow.swift
//  Braintree
//
//  Created by Mihael Isaev on 28/09/2018.
//

import Foundation

public final class TransactionLevelFeeReportRow: BraintreeContent {
    public static var key: String = ""
    
    // Shared fields.
    private var merchantAccountId: String
    private var transactionId: String
    private var originalTransactionId: String
    private var transactionType: String
    private var presentmentCurrency: String
    private var settlementCurrency: String
    private var settlementAmount: Double
    private var settlementDate: Date
    private var disbursementDate: Date
    private var paymentInstrument: String
    private var cardBrand: String
    private var cardType: String
    private var first6OfCreditCard: String
    private var issuingBank: String
    private var refundedAmount: Double
    private var exchangeRate: Double
    private var orderId: String
    private var acquirerReferenceNumber: String
    private var cardIssuingCountry: String
    private var discount: Double
    private var discountCredit: Double
    private var perTransactionFee: Double
    private var perTransactionFeeCredit: Double
    
    // IC+ fields.
    private var interchangeDescription: String
    private var interchangeCurrency: String
    private var estInterchangeRate: Double
    private var estInterchangeRateCredit: Double
    private var estInterchangeFixed: Double
    private var estInterchangeFixedCredit: Double
    private var estInterchangeTotalAmount: Double
    private var estTotalFeeAmount: Double
    private var braintreeTotalAmount: Double
    
    // Flat-fee fields.
    private var originalSaleAmount: Double
    private var refundType: String
    private var multicurrencyFeeAmount: Double
    private var multicurrencyFeeCredit: Double
    private var totalFeeAmount: Double
    
//    private enum CodingKeys : String, CodingKey {
//        case
//    }
}
