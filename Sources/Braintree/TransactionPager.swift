//
//  TransactionPager.swift
//  Braintree
//
//  Created by Mihael Isaev on 28/09/2018.
//

import Foundation

public class TransactionPager: Pager {
    public var gateway: TransactionGateway
    public var query: TransactionSearchRequest
    
    public init (gateway: TransactionGateway, query: TransactionSearchRequest) {
        self.gateway = gateway
        self.query = query
    }
    
    public typealias T = TransactionPager
    
    public func getPage(ids: [String]) -> [TransactionPager] {
        return []//TODO//gateway.fetchTransactions(query, ids)
    }
}
