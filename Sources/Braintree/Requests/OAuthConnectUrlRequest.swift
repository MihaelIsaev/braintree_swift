//
//  OAuthConnectUrlRequest.swift
//  Braintree
//
//  Created by Mihael Isaev on 28/09/2018.
//

import Foundation

public final class OAuthConnectUrlRequest: BraintreeContent {
    public static var key: String = ""
    
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
    
    //    private enum CodingKeys : String, CodingKey {
    //        case
    //    }
}
