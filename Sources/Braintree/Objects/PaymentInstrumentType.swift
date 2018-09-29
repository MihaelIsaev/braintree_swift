//
//  PaymentInstrumentType.swift
//  Braintree
//
//  Created by Mihael Isaev on 28/09/2018.
//

import Foundation

public enum PaymentInstrumentType: String, Codable {
    case paypalAccount = "paypal_account"
    @available(*, deprecated)
    case europeBankAccount = "europe_bank_account"
    case creditCard = "credit_card"
    case applePayCard = "apple_pay_card"
    case androidPayCard = "android_pay_card"
    case amexExpressCheckoutCard = "amex_express_checkout_card"
    case coinbaseAccount = "coinbase_account"
    case venmoAccount = "venmo_account"
    case visaCheckoutCard = "visa_checkout_card"
    case masterpassCard = "masterpass_card"
    case usBankAccount = "us_bank_account"
    case idealPayment = "ideal_payment"
    case samsungPayCard = "samsung_pay_card"
}
