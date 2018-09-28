//
//  OAuthGateway.swift
//  Braintree
//
//  Created by Mihael Isaev on 27/09/2018.
//

import Foundation

class OAuthGateway {
    private var http: Http
    private var configuration: Configuration
    
    public init(http: Http, configuration: Configuration) {
        self.http = http
        self.configuration = configuration
    }
}
