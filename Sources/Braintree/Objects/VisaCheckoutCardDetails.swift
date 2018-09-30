//
//  VisaCheckoutCardDetails.swift
//  Braintree
//
//  Created by Mihael Isaev on 28/09/2018.
//

import Foundation

public final class VisaCheckoutCardDetails: BraintreeContent {
    public static var key: String = ""
    
    private var bin: String
    private var callId: String
    private var cardType: String
    private var cardholderName: String
    private var expirationMonth: String
    private var expirationYear: String
    private var imageUrl: String
    private var issuerLocation: String
    private var last4: String
    private var paymentInstrumentName: String
    private var token: String
    private var commercial: String
    private var debit: String
    private var durbinRegulated: String
    private var healthcare: String
    private var payroll: String
    private var prepaid: String
    private var productId: String
    private var countryOfIssuance: String
    private var issuingBank: String
    
//    private enum CodingKeys : String, CodingKey {
//        case
//    }
}
