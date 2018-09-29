//
//  CustomerRequest.swift
//  Braintree
//
//  Created by Mihael Isaev on 28/09/2018.
//

import Foundation

public final class CustomerRequest: BraintreeContent {
    public static var key: String = ""
    private var deviceData: String
    private var company: String
    private var customerId: String
    private var deviceSessionId: String
    private var fraudMerchantId: String
    private var email: String
    private var fax: String
    private var firstName: String
    private var id: String
    private var lastName: String
    private var phone: String
    private var website: String
    private var paymentMethodNonce: String
    private var defaultPaymentMethodToken: String
    private var customFields: [String: String] = [:]
    private var creditCardRequest: CreditCardRequest
    private var riskDataCustomerRequest: RiskDataCustomerRequest
    private var optionsRequest: CustomerOptionsRequest
    private var parent: TransactionRequest
    
    //    private enum CodingKeys : String, CodingKey {
    //        case
    //    }
}
