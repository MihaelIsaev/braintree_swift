//
//  PaymentMethodNonce.swift
//  Braintree
//
//  Created by Mihael Isaev on 28/09/2018.
//

import Foundation

public final class PaymentMethodNonce: BraintreeContent {
    public static var key: String = ""
    
    private var isDefault: Bool
    private var publicId: String
    private var isLocked: Bool
    private var isConsumed: Bool
    private var details: PaymentMethodNonceDetails
    private var threeDSecureInfo: ThreeDSecureInfo
    private var type: String
    private var binData: BinData
    
//    private enum CodingKeys : String, CodingKey {
//        case
//    }
}
