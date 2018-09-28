//
//  TransactionPager.swift
//  Braintree
//
//  Created by Mihael Isaev on 28/09/2018.
//

import Foundation

public class TransactionPager: Pager {
    private var gateway: TransactionGateway
    private var query: TransactionSearchRequest
    
    public typealias T = TransactionPager
    
    public func getPage(ids: [String]) -> [TransactionPager] {
        return gateway.fetchTransactions(query, ids)
    }
}
