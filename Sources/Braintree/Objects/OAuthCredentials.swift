//
//  OAuthCredentials.swift
//  Braintree
//
//  Created by Mihael Isaev on 28/09/2018.
//

import Foundation

public final class OAuthCredentials: BraintreeContent {
    public static var key: String = ""
    
    private var accessToken: String
    private var refreshToken: String
    private var tokenType: String
    private var scope: String
    private var expiresAt: Date
    
//    private enum CodingKeys : String, CodingKey {
//        case
//    }
}
