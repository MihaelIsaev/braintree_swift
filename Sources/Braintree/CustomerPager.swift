//
//  CustomerPager.swift
//  Braintree
//
//  Created by Mihael Isaev on 28/09/2018.
//

import Foundation

public class CustomerPager: Pager {
    private var gateway: CustomerGateway
    private var query: CustomerSearchRequest
    
    public init (gateway: CustomerGateway, query: CustomerSearchRequest) {
        self.gateway = CustomerGateway
        self.query = CustomerSearchRequest
    }
    
    public typealias T = CustomerPager
    
    public func getPage(ids: [String]) -> [CustomerPager] {
        return gateway.fetchCustomers(query, ids)
    }
}
