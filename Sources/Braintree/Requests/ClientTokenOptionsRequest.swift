//
//  ClientTokenOptionsRequest.swift
//  Braintree
//
//  Created by Mihael Isaev on 28/09/2018.
//

import Foundation

public final class ClientTokenOptionsRequest: BraintreeContent {
    public static var key: String = ""
    private var makeDefault: Bool
    private var verifyCard: Bool
    private var failOnDuplicatePaymentMethod: Bool
    private var parent: ClientTokenRequest
    
    //    private enum CodingKeys : String, CodingKey {
    //        case
    //    }
}
