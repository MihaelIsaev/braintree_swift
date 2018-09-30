//
//  DocumentUpload.swift
//  Braintree
//
//  Created by Mihael Isaev on 28/09/2018.
//

import Foundation

public final class DocumentUpload: BraintreeContent {
    public static var key: String = ""
    
    public enum Kind: String, Codable {
        case evidenceDocument = "evidence_document"
    }
    
    private var id: String
    private var kind: Kind
    private var contentType: String
    private var name: String
    private var size: Int64
    
//    private enum CodingKeys : String, CodingKey {
//        case
//    }
}
