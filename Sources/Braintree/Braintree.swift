//
//  Braintree.swift
//  Braintree
//
//  Created by Mihael Isaev on 29/09/2018.
//

import Foundation
import Vapor

public class Braintree: Service {
    var configuration: Configuration
    
    public init(environment: Environment, merchantId: String, publicKey: String, privateKey: String) throws {
        self.configuration = try Configuration(environment: environment,
                                               merchantId: merchantId,
                                               publicKey: publicKey,
                                               privateKey: privateKey)
    }
    
    public func gateway(container: Container) -> BraintreeGateway {
        return BraintreeGateway(container: container, configuration: configuration)
    }
}
