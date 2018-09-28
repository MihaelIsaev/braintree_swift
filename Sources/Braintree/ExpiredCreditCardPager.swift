//
//  ExpiredCreditCardPager.swift
//  Braintree
//
//  Created by Mihael Isaev on 28/09/2018.
//

import Foundation

public class ExpiredCreditCardPager: Pager {
    private var gateway: CreditCardGateway
    
    public typealias T = ExpiredCreditCardPager
    
    public func getPage(ids: [String]) -> [ExpiredCreditCardPager] {
        return gateway.fetchExpiredCreditCards(ids)
    }
}
