//
//  AuthorizationAdjustment.swift
//  Braintree
//
//  Created by Mihael Isaev on 28/09/2018.
//

import Foundation

public class AuthorizationAdjustment: Codable {
    private var amount: Double
    private var success: Bool
    private var timestamp: Date
    private var processorResponseCode: String
    private var processorResponseText: String
}
