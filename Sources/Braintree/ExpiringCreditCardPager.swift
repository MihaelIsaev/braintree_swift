//
//  ExpiringCreditCardPager.swift
//  Braintree
//
//  Created by Mihael Isaev on 28/09/2018.
//

import Foundation

public class ExpiringCreditCardPager: Pager {
    public var gateway: CreditCardGateway
    public var queryString: String
    
    public init (gateway: CreditCardGateway, queryString: String) {
        self.gateway = gateway
        self.queryString = queryString
    }
    
    public typealias T = ExpiringCreditCardPager
    
    public func getPage(ids: [String]) -> [ExpiringCreditCardPager] {
        return []//TODO//gateway.fetchExpiringCreditCards(ids, queryString)
    }
}
