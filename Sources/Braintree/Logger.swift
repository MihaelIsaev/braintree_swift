//
//  Logger.swift
//  Braintree
//
//  Created by Mihael Isaev on 27/09/2018.
//

import Foundation

public class Logger {
    public enum Level: Int, Codable {
        case fine, info
    }
    
    public init() {}
    
    public func log(_ level: Level, message: String) {
        
    }
}
