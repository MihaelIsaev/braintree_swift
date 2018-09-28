//
//  IbanBankAccount.swift
//  Braintree
//
//  Created by Mihael Isaev on 28/09/2018.
//

import Foundation

public class IbanBankAccount: Codable {
    private var accountHolderName: String
    private var ibanAccountNumberLast4: String
    private var ibanCountry: String
    private var description: String
    private var maskedIban: String
    private var bic: String
}
