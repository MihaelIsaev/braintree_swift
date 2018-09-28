//
//  DocumentUploadRequest.swift
//  Braintree
//
//  Created by Mihael Isaev on 28/09/2018.
//

import Foundation
import Vapor

public final class DocumentUploadRequest: Content {
    private var kind: DocumentUpload.Kind
    private var file: File
    
    public init (kind: DocumentUpload.Kind, file: File) {
        self.kind = kind
        self.file = file
    }
}
