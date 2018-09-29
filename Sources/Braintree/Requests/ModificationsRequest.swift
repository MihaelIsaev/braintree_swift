//
//  ModificationsRequest.swift
//  Braintree
//
//  Created by Mihael Isaev on 28/09/2018.
//

import Foundation

public final class ModificationsRequest: BraintreeContent {
    public static var key: String = ""
    
    private var parent: SubscriptionRequest
    private var name: String
    private var adds: [AddModificationRequest]
    private var updates: UpdateModificationRequest
    private var removeModificationIds: [String]
    
    //    private enum CodingKeys : String, CodingKey {
    //        case
    //    }
}
