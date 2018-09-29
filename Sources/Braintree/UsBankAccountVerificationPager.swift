//
//  UsBankAccountVerificationPager.swift
//  Braintree
//
//  Created by Mihael Isaev on 28/09/2018.
//

import Foundation

public class UsBankAccountVerificationPager: Pager {
    public var gateway: UsBankAccountVerificationGateway
    public var query: UsBankAccountVerificationSearchRequest
    
    public init (gateway: UsBankAccountVerificationGateway, query: UsBankAccountVerificationSearchRequest) {
        self.gateway = gateway
        self.query = query
    }
    
    public typealias T = UsBankAccountVerificationPager
    
    public func getPage(ids: [String]) -> [UsBankAccountVerificationPager] {
        return []//TODO//gateway.fetchUsBankAccountVerifications(query, ids);
    }
}
