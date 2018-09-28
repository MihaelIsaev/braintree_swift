//
//  BraintreeGateway.swift
//  Braintree
//
//  Created by Mihael Isaev on 27/09/2018.
//

import Foundation
import Vapor

class BraintreeGateway {
    private var configuration: Configuration
    //private var graphQLClient: GraphQLClient
    private var http: Http
    
    /// Instantiates a BraintreeGateway. Use the values provided by Braintree
    init(container: Container, environment: Environment, merchantId: String, publicKey: String, privateKey: String) throws {
        self.configuration = try Configuration(environment: environment,
                                                              merchantId: merchantId,
                                                              publicKey: publicKey,
                                                              privateKey: privateKey)
        self.http = Http(container: container, configuration: configuration)
    }
    
    var addOn: AddOnGateway {
        return AddOnGateway(http: http, configuration: configuration)
    }
    
    var address: AddressGateway {
        return AddressGateway(http: http, configuration: configuration)
    }
    
    var clientToken: ClientTokenGateway {
        return ClientTokenGateway(http: http, configuration: configuration)
    }
    
    var creditCard: CreditCardGateway {
        return CreditCardGateway(http: http, configuration: configuration)
    }
    
    var creditCardVerification: CreditCardVerificationGateway {
        return CreditCardVerificationGateway(http: http, configuration: configuration)
    }
    
    var usBankAccountVerification: UsBankAccountVerificationGateway {
        return UsBankAccountVerificationGateway(http: http, configuration: configuration)
    }
    
    var customer: CustomerGateway {
        return CustomerGateway(http: http, configuration: configuration)
    }
    
    var discount: DiscountGateway {
        return DiscountGateway(http: http, configuration: configuration)
    }
    
    var dispute: DisputeGateway {
        return DisputeGateway(http: http, configuration: configuration)
    }
    
    var paymentMethod: PaymentMethodGateway {
        return PaymentMethodGateway(http: http, configuration: configuration)
    }
    
    var paymentMethodNonce: PaymentMethodNonceGateway {
        return PaymentMethodNonceGateway(http: http, configuration: configuration)
    }
    
    var paypalAccount: PayPalAccountGateway {
        return PayPalAccountGateway(http: http, configuration: configuration)
    }
    
    var usBankAccount: UsBankAccountGateway {
        return UsBankAccountGateway(http: http, configuration: configuration)
    }
    
    var idealPayment: IdealPaymentGateway {
        return IdealPaymentGateway(http: http, configuration: configuration)
    }
    
    var plan: PlanGateway {
        return PlanGateway(http: http, configuration: configuration)
    }
    
    var settlementBatchSummary: SettlementBatchSummaryGateway {
        return SettlementBatchSummaryGateway(http: http, configuration: configuration)
    }
    
    var subscription: SubscriptionGateway {
        return SubscriptionGateway(http: http, configuration: configuration)
    }
    
    var transaction: TransactionGateway {
        return TransactionGateway(http: http, configuration: configuration)
    }
    
    var transactionLineItem: TransactionLineItemGateway {
        return TransactionLineItemGateway(http: http, configuration: configuration)
    }
    
    var transparentRedirect: TransparentRedirectGateway {
        return TransparentRedirectGateway(http: http, configuration: configuration)
    }
    
    var webhookNotification: WebhookNotificationGateway {
        return WebhookNotificationGateway(http: http, configuration: configuration)
    }
    
    var webhookTesting: WebhookTestingGateway {
        return WebhookTestingGateway(http: http, configuration: configuration)
    }
    
    var merchantAccount: MerchantAccountGateway {
        return MerchantAccountGateway(http: http, configuration: configuration)
    }
    
    var merchant: MerchantGateway {
        return MerchantGateway(http: http, configuration: configuration)
    }
    
    var oauth: OAuthGateway {
        return OAuthGateway(http: http, configuration: configuration)
    }
    
    var testing: TestingGateway {
        return TestingGateway(http: http, configuration: configuration)
    }
    
    var documentUpload: DocumentUploadGateway {
        return DocumentUploadGateway(http: http, configuration: configuration)
    }
    
    var report: ReportGateway {
        return ReportGateway(http: http, configuration: configuration)
    }
}
