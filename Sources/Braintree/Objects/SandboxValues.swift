//
//  SandboxValues.swift
//  Braintree
//
//  Created by Mihael Isaev on 28/09/2018.
//

import Foundation

public final class SandboxValues {
    public enum CreditCardNumber: String, Codable {
        case visa = "4111111111111111"
        case mastercard = "5555555555554444"
        case fraud = "4000111111111511"
        case amex = "378282246310005"
        
        public enum AmexPayWithPoints: String, Codable {
            case success = "371260714673002"
            case ineligibleCard = "378267515471109"
            case insufficientPoints = "371544868764018"
        }
    }
    
    public enum Dispute: String, Codable {
        case chargeback = "4023898493988028"
    }
    
    public enum PaymentMethodNonce: String, Codable {
        case applePayVisa = "fake-apple-pay-visa-nonce"
        case applePayAmex = "fake-apple-pay-amex-nonce"
        case applePayMastercard = "fake-apple-pay-mastercard-nonce"
    }
    
    public enum FailsVerification: String, Codable {
        case mastercard = "5105105105105100"
    }
    
    public enum TransactionAmount: Double, Codable { //or change to String?
        case authorize = 1000.00
        case decline = 2000.00
        case failed = 3000.00
    }
}
