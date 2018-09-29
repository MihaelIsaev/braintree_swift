//
//  BraintreeGateway.swift
//  Braintree
//
//  Created by Mihael Isaev on 27/09/2018.
//

import Foundation
import Vapor

public class BraintreeGateway {
    var configuration: Configuration
    //private var graphQLClient: GraphQLClient
    var http: Http
    
    /// Instantiates a BraintreeGateway. Use the values provided by Braintree
    init(container: Container, configuration: Configuration) {
        self.configuration = configuration
        self.http = Http(container: container, configuration: configuration)
    }
    
    public var addOn: AddOnGateway {
        return AddOnGateway(http: http, configuration: configuration)
    }
    
    public var address: AddressGateway {
        return AddressGateway(http: http, configuration: configuration)
    }
    
    public var clientToken: ClientTokenGateway {
        return ClientTokenGateway(http: http, configuration: configuration)
    }
    
    public var creditCard: CreditCardGateway {
        return CreditCardGateway(http: http, configuration: configuration)
    }
    
    public var creditCardVerification: CreditCardVerificationGateway {
        return CreditCardVerificationGateway(http: http, configuration: configuration)
    }
    
    public var usBankAccountVerification: UsBankAccountVerificationGateway {
        return UsBankAccountVerificationGateway(http: http, configuration: configuration)
    }
    
    public var customer: CustomerGateway {
        return CustomerGateway(http: http, configuration: configuration)
    }
    
    public var discount: DiscountGateway {
        return DiscountGateway(http: http, configuration: configuration)
    }
    
    public var dispute: DisputeGateway {
        return DisputeGateway(http: http, configuration: configuration)
    }
    
    public var paymentMethod: PaymentMethodGateway {
        return PaymentMethodGateway(http: http, configuration: configuration)
    }
    
    public var paymentMethodNonce: PaymentMethodNonceGateway {
        return PaymentMethodNonceGateway(http: http, configuration: configuration)
    }
    
    public var paypalAccount: PayPalAccountGateway {
        return PayPalAccountGateway(http: http, configuration: configuration)
    }
    
    public var usBankAccount: UsBankAccountGateway {
        return UsBankAccountGateway(http: http, configuration: configuration)
    }
    
    public var idealPayment: IdealPaymentGateway {
        return IdealPaymentGateway(http: http, configuration: configuration)
    }
    
    public var plan: PlanGateway {
        return PlanGateway(http: http, configuration: configuration)
    }
    
    public var settlementBatchSummary: SettlementBatchSummaryGateway {
        return SettlementBatchSummaryGateway(http: http, configuration: configuration)
    }
    
    public var subscription: SubscriptionGateway {
        return SubscriptionGateway(http: http, configuration: configuration)
    }
    
    public var transaction: TransactionGateway {
        return TransactionGateway(http: http, configuration: configuration)
    }
    
    public var transactionLineItem: TransactionLineItemGateway {
        return TransactionLineItemGateway(http: http, configuration: configuration)
    }
    
    public var transparentRedirect: TransparentRedirectGateway {
        return TransparentRedirectGateway(http: http, configuration: configuration)
    }
    
    public var webhookNotification: WebhookNotificationGateway {
        return WebhookNotificationGateway(http: http, configuration: configuration)
    }
    
    public var webhookTesting: WebhookTestingGateway {
        return WebhookTestingGateway(http: http, configuration: configuration)
    }
    
    public var merchantAccount: MerchantAccountGateway {
        return MerchantAccountGateway(http: http, configuration: configuration)
    }
    
    public var merchant: MerchantGateway {
        return MerchantGateway(http: http, configuration: configuration)
    }
    
    public var oauth: OAuthGateway {
        return OAuthGateway(http: http, configuration: configuration)
    }
    
    public var testing: TestingGateway {
        return TestingGateway(http: http, configuration: configuration)
    }
    
    public var documentUpload: DocumentUploadGateway {
        return DocumentUploadGateway(http: http, configuration: configuration)
    }
    
    public var report: ReportGateway {
        return ReportGateway(http: http, configuration: configuration)
    }
}
