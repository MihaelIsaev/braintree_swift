//
//  SubscriptionPager.swift
//  Braintree
//
//  Created by Mihael Isaev on 28/09/2018.
//

import Foundation

public class SubscriptionPager: Pager {
    public var gateway: SubscriptionGateway
    public var search: SubscriptionSearchRequest
    
    public init (gateway: SubscriptionGateway, search: SubscriptionSearchRequest) {
        self.gateway = gateway
        self.search = search
    }
    
    public typealias T = SubscriptionPager
    
    public func getPage(ids: [String]) -> [SubscriptionPager] {
        return []//TODO//gateway.fetchSubscriptions(search, ids)
    }
}
