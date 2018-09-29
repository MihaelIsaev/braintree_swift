//
//  CreditCardVerificationPager.swift
//  Braintree
//
//  Created by Mihael Isaev on 28/09/2018.
//

import Foundation

public class CreditCardVerificationPager: Pager {
    private var gateway: CreditCardVerificationGateway
    private var query: CreditCardVerificationSearchRequest
    
    public init (gateway: CreditCardVerificationGateway, query: CreditCardVerificationSearchRequest) {
        self.gateway = gateway
        self.query = query
    }
    
    public typealias T = CreditCardVerificationPager
    
    public func getPage(ids: [String]) -> [T] {
        return []//TODO//gateway.fetchCreditCardVerifications(query, ids)
    }
}
