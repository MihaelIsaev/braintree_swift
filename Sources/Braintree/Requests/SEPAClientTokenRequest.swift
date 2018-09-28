//
//  SEPAClientTokenRequest.swift
//  Braintree
//
//  Created by Mihael Isaev on 28/09/2018.
//

import Foundation
import Vapor

public final class SEPAClientTokenRequest: Content {
    private var mandateType: String
    private var mandateAcceptanceLocation: String
}
