//
//  SubscriptionPager.swift
//  Braintree
//
//  Created by Mihael Isaev on 28/09/2018.
//

import Foundation

public class SubscriptionPager: Pager {
    private var gateway: SubscriptionGateway
    private var search: SubscriptionSearchRequest
    
    public typealias T = SubscriptionPager
    
    public func getPage(ids: [String]) -> [SubscriptionPager] {
        return gateway.fetchSubscriptions(search, ids)
    }
}
