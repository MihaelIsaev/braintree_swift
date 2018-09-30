//
//  IbanBankAccount.swift
//  Braintree
//
//  Created by Mihael Isaev on 28/09/2018.
//

import Foundation

public final class IbanBankAccount: BraintreeContent {
    public static var key: String = ""
    
    private var accountHolderName: String
    private var ibanAccountNumberLast4: String
    private var ibanCountry: String
    private var description: String
    private var maskedIban: String
    private var bic: String
    
//    private enum CodingKeys : String, CodingKey {
//        case
//    }
}
