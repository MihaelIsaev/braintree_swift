//
//  FileEvidenceRequest.swift
//  Braintree
//
//  Created by Mihael Isaev on 28/09/2018.
//

import Foundation
import Vapor

public final class FileEvidenceRequest: Content {
    private var documentId: String
    private var category: String
}
