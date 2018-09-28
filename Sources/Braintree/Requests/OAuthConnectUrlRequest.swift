//
//  OAuthConnectUrlRequest.swift
//  Braintree
//
//  Created by Mihael Isaev on 28/09/2018.
//

import Foundation
import Vapor

public final class OAuthConnectUrlRequest: Content {
    private var merchantId: String
    private var scope: String
    private var clientId: String
    private var state: String
    private var redirectUri: String
    private var landingPage: String
    private var loginOnly: Bool
    private var signupOnly: Bool
    private var paymentMethods: [String] = []
    
    private var user: OAuthConnectUrlUserRequest
    private var business: OAuthConnectUrlBusinessRequest
}
