//
//  UsBankAccountVerificationPager.swift
//  Braintree
//
//  Created by Mihael Isaev on 28/09/2018.
//

import Foundation

public class UsBankAccountVerificationPager: Pager {
    private var gateway: UsBankAccountVerificationGateway
    private var query: UsBankAccountVerificationSearchRequest
    
    public init (gateway: UsBankAccountVerificationGateway, query: UsBankAccountVerificationSearchRequest) {
        self.gateway = gateway
        self.query = query
    }
    
    public typealias T = UsBankAccountVerificationPager
    
    public func getPage(ids: [String]) -> [UsBankAccountVerificationPager] {
        return gateway.fetchUsBankAccountVerifications(query, ids);
    }
}
