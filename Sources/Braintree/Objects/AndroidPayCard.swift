//
//  AndroidPayCard.swift
//  Braintree
//
//  Created by Mihael Isaev on 27/09/2018.
//

import Foundation

public class AndroidPayCard: PaymentMethod {
    /// The type of the card tokenized by the network.
    public var sourceCardType: String
    
    /// The last 4 digits of the payment method tokenized by the network.
    public var sourceCardLast4: String
    
    /// Indicates what type of payment method was tokenized by the network. Also includes an identifier for the account (e.g. last 4 digits if the payment method was a credit card).
    public var sourceDescription: String
    
    /// The card type of the device-specific account number (DPAN).
    public var virtualCardType: String
    
    /// The last 4 digits of the device-specific account number (DPAN).
    public var virtualCardLast4: String
    
    /// The expiration month of the credit card, formatted MM
    public var expirationMonth: String
    
    /// The 2- or 4-digit year associated with the credit card, formatted YY or YYYY
    public var expirationYear: String
    
    /// An alphanumeric value that references a specific payment method stored in your Vault.
    public var token: String
    
    /// A unique identifier provided by Google to track the payment method's transactions.
    public var googleTransactionId: String
    
    /// The first 6 digits of the device-specific account number (DPAN), known as the Bank Identification Number. This BIN will differ from the BIN of the underlying card.
    public var bin: String
    
    /// A value indicating whether the specified payment method is the default for the customer.
    public var isDefault: Bool?
    
    /// A URL that points to a payment method image resource (a PNG file) hosted by Braintree.
    public var imageUrl: String
    
    /// A string value representing an existing customer in your Vault that owns this payment method. Use this to look up a single customer.
    public var customerId: String
    
    /// The date/time the object was created.
    public var createdAt: Date?
    
    /// The date/time the object was last updated.
    public var updatedAt: Date?
    
    /// Subscriptions associated with the payment method.
    public var subscriptions: [Subscription] = []
    
//    private enum CodingKeys : String, CodingKey {
//        case
//    }
    
    init (sourceCardType: String,
          sourceCardLast4: String,
          sourceDescription: String,
          virtualCardType: String,
          virtualCardLast4: String,
          expirationMonth: String,
          expirationYear: String,
          token: String,
          googleTransactionId: String,
          bin: String,
          isDefault: Bool? = nil,
          imageUrl: String,
          customerId: String,
          createdAt: Date? = nil,
          updatedAt: Date? = nil) {
        //self.cardType = cardType
        //self.last4 = last4
        self.sourceCardType = sourceCardType
        self.sourceCardLast4 = sourceCardLast4
        self.sourceDescription = sourceDescription
        self.virtualCardType = virtualCardType
        self.virtualCardLast4 = virtualCardLast4
        self.expirationMonth = expirationMonth
        self.expirationYear = expirationYear
        self.token = token
        self.googleTransactionId = googleTransactionId
        self.bin = bin
        self.isDefault = isDefault
        self.imageUrl = imageUrl
        self.customerId = customerId
        self.createdAt = createdAt
        self.updatedAt = updatedAt
    }
}
