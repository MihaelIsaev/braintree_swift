//
//  Pager.swift
//  Braintree
//
//  Created by Mihael Isaev on 28/09/2018.
//

import Foundation

public protocol Pager {
    associatedtype T
    
    func getPage(ids: [String]) -> [T]
}
