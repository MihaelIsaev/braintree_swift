//
//  DocumentUpload.swift
//  Braintree
//
//  Created by Mihael Isaev on 28/09/2018.
//

import Foundation

public class DocumentUpload: Codable {
    public enum Kind: String {
        case evidenceDocument = "evidence_document"
    }
    
    private var id: String
    private var kind: Kind
    private var contentType: String
    private var name: String
    private var size: Int64
}
