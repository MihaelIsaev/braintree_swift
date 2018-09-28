//
//  OAuthAccessRevocation.swift
//  Braintree
//
//  Created by Mihael Isaev on 28/09/2018.
//

import Foundation

public class OAuthAccessRevocation: Codable {
    private var merchantId: String
    private var oauthApplicationClientId: String
}
