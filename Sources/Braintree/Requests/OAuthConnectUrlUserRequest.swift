//
//  OAuthConnectUrlUserRequest.swift
//  Braintree
//
//  Created by Mihael Isaev on 29/09/2018.
//

import Foundation
import Vapor

public final class OAuthConnectUrlUserRequest: Content {
    public var country: String
    public var email: String
    public var firstName: String
    public var lastName: String
    public var phone: String
    public var bobYear: String
    public var bobMonth: String
    public var bobDay: String
    public var streetAddress: String
    public var locality: String
    public var region: String
    public var postalCode: String
    
    //    private enum CodingKeys : String, CodingKey {
    //        case
    //    }
}
