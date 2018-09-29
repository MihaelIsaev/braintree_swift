//
//  ClientTokenRequest.swift
//  Braintree
//
//  Created by Mihael Isaev on 28/09/2018.
//

import Foundation

public final class ClientTokenRequest: BraintreeContent {
    public static var key: String = ""
    static var defaultVersion = 2
    
    private var customerId: String
    private var version: Int
    private var merchantAccountId: String
    private var optionsRequest: ClientTokenOptionsRequest
    
    //    private enum CodingKeys : String, CodingKey {
    //        case
    //    }
}
