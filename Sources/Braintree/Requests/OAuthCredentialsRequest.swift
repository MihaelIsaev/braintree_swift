//
//  OAuthCredentialsRequest.swift
//  Braintree
//
//  Created by Mihael Isaev on 28/09/2018.
//

import Foundation
import Vapor

public final class OAuthCredentialsRequest: Content {
    public var code: String
    public var scope: String
    public var grantType: String
    public var refreshToken: String
    
    //    private enum CodingKeys : String, CodingKey {
    //        case
    //    }
}
