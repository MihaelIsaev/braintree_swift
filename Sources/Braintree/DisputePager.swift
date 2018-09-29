//
//  DisputePager.swift
//  Braintree
//
//  Created by Mihael Isaev on 28/09/2018.
//

import Foundation

public class DisputePager: Pager {
    private var gateway: DisputeGateway
    private var query: DisputeSearchRequest
    
    public init (gateway: DisputeGateway, query: DisputeSearchRequest) {
        self.gateway = gateway
        self.query = query
    }
    
    public typealias T = DisputePager
    
    public func getPage(ids: [String]) -> [DisputePager] {
        return []//TODO//gateway.fetchDisputes(query, page)
    }
}
