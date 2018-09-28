//
//  Error.swift
//  Braintree
//
//  Created by Mihael Isaev on 27/09/2018.
//

import Foundation

enum BraintreeErrorCase {
    /// Raised when your API keys are incorrect.
    /// If you're getting this exception when first integrating,
    /// double-check that you haven't accidentally tried
    /// to use your sandbox keys in production or vice-versa.
    case authentication
    
    /// Raised when the API key that you're using
    /// is not authorized to perform the attempted
    /// action according to the role assigned
    /// to the user who owns the API key.
    /// This error can also occur if the data
    /// you submitted was malformed – either a parameter
    /// isn't in the allowed list, or it is
    /// at the wrong location in the nested parameters.
    case authorization
    
    /// Raised when the library isn't configured.
    /// Make sure you have environment, merchant id, public key, and private key.
    case configuration
    
    /// Raised when a request times out.
    /// We originally used this exception during maintenance windows,
    /// but we never go down for maintenance anymore.
    /// In a future release of the client library we'll
    /// likely rename this, but we're keeping
    /// the current name to maintain backwards
    /// compatibility for client side exception handling.
    case downForMaintenance
    
    /// Raised when a request times out because
    /// it takes longer than the custom timeout limit
    // /you set in the server SDKs.
    /// A request that returns this exception could
    /// still be successful if it processes within
    /// the Braintree gateway timeout of 60 seconds.
    case timeout
    
    /// Raised when someone hits your Transparent Redirect URL
    /// with an invalid hash in the query string.
    /// The reason why this error happens is because
    /// when the gateway receives the initial Transparent Redirect request,
    /// it generates a query string that includes a verification hash
    /// at the end to protect against tampering in the client.
    /// This hash is calculated based on the entire contents
    /// of the query string minus the hash.
    /// The client library uses the same method to check the hash,
    /// and so you'll get this error any time the query string
    /// passed into the confirm method is not exactly the same
    /// as the query string that the gateway redirected to.
    /// Note: Transparent Redirect is a deprecated integration method.
    case forgedQueryString
    
    /// Raised when the webhook challenge
    /// you attempt to verify is in an invalid format.
    case invalidChallenge
    
    /// Raised when the webhook notification
    /// you attempt to parse has an invalid signature.
    /// This could be caused by a payload being modified
    /// in transit or if you attempt to parse messages
    /// that did not originate from our servers.
    case invalidSignature
    
    /// Raised when the record that you're trying to operate
    /// on can't be found. For example, if you try to update
    /// a customer and the customer ID isn't valid.
    /// For references and associations, you'll receive
    /// a validation error if the reference is invalid.
    /// For example, when creating a credit card and
    /// specifying which customer ID it should be associated to,
    /// if the customer ID is invalid, it will be
    /// a validation error, not a not found exception.
    case notFound
    
    /// Raised when something goes wrong
    /// on the Braintree server when trying to process your request.
    case server
    
    /// Raised when an error occurs that
    /// the client library is not built to handle.
    /// If this happens, there's probably a bug in the client library.
    case unexpected
    
    /// Raised when requests associated
    /// with your account reach unsafe levels.
    /// We may limit API resources by merchant
    /// if activity risks negative impact to other merchants.
    case tooManyRequests
    
    /// Raised when you're trying to use a version of the library
    /// that is no longer supported. Note that we support
    /// all client library versions that are in use and we will
    /// not deprecate an existing version without first
    /// reaching out to anyone who needs to upgrade.
    case upgradeRequired
}

protocol BraintreeErrorProtocol: Error {
    var code: BraintreeErrorCase { get }
    var reason: String? { get }
}

struct BraintreeError: BraintreeErrorProtocol {
    var code: BraintreeErrorCase
    var reason: String?
    
    init(_ code: BraintreeErrorCase, reason: String? = nil) {
        self.code = code
        self.reason = reason
    }
}
