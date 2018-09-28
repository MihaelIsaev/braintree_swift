//
//  OAuthCredentials.swift
//  Braintree
//
//  Created by Mihael Isaev on 28/09/2018.
//

import Foundation

public class OAuthCredentials: Codable {
    private var accessToken: String
    private var refreshToken: String
    private var tokenType: String
    private var scope: String
    private var expiresAt: Date
}
