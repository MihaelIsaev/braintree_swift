//
//  MerchantAccountPager.swift
//  Braintree
//
//  Created by Mihael Isaev on 28/09/2018.
//

import Foundation

public class MerchantAccountPager: Pager {
    public var gateway: MerchantAccountGateway
    
    public init (gateway: MerchantAccountGateway) {
        self.gateway = gateway
    }
    
    public typealias T = MerchantAccountPager
    
    public func getPage(ids: [String]) -> [MerchantAccountPager] {
        return []//TODO//gateway.fetchMerchantAccounts(page)
    }
}
