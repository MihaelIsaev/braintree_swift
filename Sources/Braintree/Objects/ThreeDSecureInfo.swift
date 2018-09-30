//
//  ThreeDSecureInfo.swift
//  Braintree
//
//  Created by Mihael Isaev on 28/09/2018.
//

import Foundation

public final class ThreeDSecureInfo: BraintreeContent {
    public static var key: String = ""
    
    private var liabilityShifted: Bool
    private var liabilityShiftPossible: Bool
    private var enrolled: String
    private var status: String
    private var cavv: String
    private var eciFlag: String
    private var xid: String
    
//    private enum CodingKeys : String, CodingKey {
//        case
//    }
}
