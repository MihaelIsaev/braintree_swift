//
//  DocumentUploadRequest.swift
//  Braintree
//
//  Created by Mihael Isaev on 28/09/2018.
//

import Foundation

public final class DocumentUploadRequest: BraintreeContent {
    public static var key: String = ""
    private var kind: DocumentUpload.Kind
    private var file: Http.File
    
    public init (kind: DocumentUpload.Kind, file: Http.File) {
        self.kind = kind
        self.file = file
    }
}
