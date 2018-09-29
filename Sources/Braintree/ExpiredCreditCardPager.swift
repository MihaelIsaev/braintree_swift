//
//  ExpiredCreditCardPager.swift
//  Braintree
//
//  Created by Mihael Isaev on 28/09/2018.
//

import Foundation

public class ExpiredCreditCardPager: Pager {
    public var gateway: CreditCardGateway
    
    public init (gateway: CreditCardGateway) {
        self.gateway = gateway
    }
    
    public typealias T = ExpiredCreditCardPager
    
    public func getPage(ids: [String]) -> [ExpiredCreditCardPager] {
        return []//TODO//gateway.fetchExpiredCreditCards(ids)
    }
}
