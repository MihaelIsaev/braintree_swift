//
//  IdealPaymentGateway.swift
//  Braintree
//
//  Created by Mihael Isaev on 27/09/2018.
//

import Foundation
import Vapor

public class IdealPaymentGateway {
    public var http: Http
    public var configuration: Configuration
    
    public init(http: Http, configuration: Configuration) {
        self.http = http
        self.configuration = configuration
    }
}
