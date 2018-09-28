//
//  OAuthRevokeAccessTokenRequest.swift
//  Braintree
//
//  Created by Mihael Isaev on 28/09/2018.
//

import Foundation
import Vapor

public final class OAuthRevokeAccessTokenRequest: Content {
    public var token: String
}
