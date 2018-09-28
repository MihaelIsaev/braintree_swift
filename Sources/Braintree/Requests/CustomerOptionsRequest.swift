//
//  CustomerOptionsRequest.swift
//  Braintree
//
//  Created by Mihael Isaev on 28/09/2018.
//

import Foundation
import Vapor

public final class CustomerOptionsRequest: Content {
    private var parent: CustomerRequest
    private var customerOptionsPayPalRequest: CustomerOptionsPayPalRequest
}
