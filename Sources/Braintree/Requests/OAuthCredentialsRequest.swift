//
//  OAuthCredentialsRequest.swift
//  Braintree
//
//  Created by Mihael Isaev on 28/09/2018.
//

import Foundation

public final class OAuthCredentialsRequest: BraintreeContent {
    public static var key: String = ""
    
    public var code: String
    public var scope: String
    public var grantType: String
    public var refreshToken: String
    
    //    private enum CodingKeys : String, CodingKey {
    //        case
    //    }
}
