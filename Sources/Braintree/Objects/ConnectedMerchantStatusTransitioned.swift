//
//  ConnectedMerchantStatusTransitioned.swift
//  Braintree
//
//  Created by Mihael Isaev on 28/09/2018.
//

import Foundation

public class ConnectedMerchantStatusTransitioned: Codable {
    private var merchantPublicId: String
    private var oauthApplicationClientId: String
    private var status: String
}
