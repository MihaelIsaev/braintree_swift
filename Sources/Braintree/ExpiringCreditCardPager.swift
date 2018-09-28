//
//  ExpiringCreditCardPager.swift
//  Braintree
//
//  Created by Mihael Isaev on 28/09/2018.
//

import Foundation

public class ExpiringCreditCardPager: Pager {
    private var gateway: CreditCardGateway
    private var queryString: String
    
    public typealias T = ExpiringCreditCardPager
    
    public func getPage(ids: [String]) -> [ExpiringCreditCardPager] {
        return gateway.fetchExpiringCreditCards(ids, queryString)
    }
}
