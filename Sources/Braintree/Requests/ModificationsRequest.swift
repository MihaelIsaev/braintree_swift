//
//  ModificationsRequest.swift
//  Braintree
//
//  Created by Mihael Isaev on 28/09/2018.
//

import Foundation
import Vapor

public final class ModificationsRequest: Content {
    private var parent: SubscriptionRequest
    private var name: String
    private var adds: [AddModificationRequest]
    private var updates: UpdateModificationRequest
    private var removeModificationIds: [String]
}
