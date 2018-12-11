# How to install

### Edit your `Package.swift`
```swift
.package(url: "https://github.com/MihaelIsaev/braintree_swift", from: "0.1.0"),
```
And add `"Braintree"` in targets.
### Edit yoru `configure.swift`
First of all import the lib
```swift
import Braintree
```
and then register it as provider
```swift
try services.register(Braintree(environment: .sandbox, merchantId: "YOUR_MERCHANT_ID", publicKey: "YOUR_PUBLIC_KEY", privateKey: "YOUR_PRIVATE_KEY"))
```

# Little example of how to use gateways
e.g. you'd like to generate a token for a user, it is possible through `ClientToken` gateway
```swift
func clientToken(_ req: Request) throws -> Future<String> {
    //get an instance of Braintree provider
    let bt = try req.make(Braintree.self)
    //access clientToken gateway and call its generate endpoint
    return try bt.gateway(container: req).clientToken.generate()
}
```

# Contribution

Please feel free to contribute!

Braintree is a big library with a lot of gateways, its objects and requests.

Below you can see a list of completed and incompleted parts of the lib, and it would be great to get any help with it.

# ToDo List

### Gateways

- [x] AddOnGateway
- [x] AddressGateway
- [x] ClientTokenGateway
- [x] CreditCardGateway
- [ ] CreditCardVerificationGateway
- [ ] CustomerGateway
- [ ] DiscountGateway
- [ ] DisputeGateway
- [ ] DocumentUploadGateway
- [ ] IdealPaymentGateway
- [ ] MerchantAccountGateway
- [ ] MerchantGateway
- [ ] OAuthGateway
- [ ] PayPalAccountGateway
- [ ] PaymentMethodGateway
- [ ] PaymentMethodNonceGateway
- [ ] PlanGateway
- [ ] ReportGateway
- [ ] SettlementBatchSummaryGateway
- [ ] SubscriptionGateway
- [ ] TestingGateway
- [ ] TransactionGateway
- [ ] TransactionLineItemGateway
- [ ] TransparentRedirectGateway
- [ ] UsBankAccountGateway
- [ ] UsBankAccountVerificationGateway
- [ ] WebhookNotificationGateway

### Objects

- [x] AccountUpdaterDailyReport
- [x] AchMandate
- [x] AddOn
- [x] Address
- [x] AmexExpressCheckoutCard
- [x] AmexExpressCheckoutDetails
- [x] AndroidPayCard
- [x] AndroidPayDetails
- [x] ApplePayCard
- [x] ApplePayDetails
- [x] AuthorizationAdjustment
- [x] BinData
- [x] BusinessDetails
- [x] CoinbaseAccount
- [x] CoinbaseDetails
- [x] ConnectedMerchantPayPalStatusChanged
- [x] ConnectedMerchantStatusTransitioned
- [x] CreditCard
- [x] CreditCardVerification
- [x] Customer
- [x] Descriptor
- [x] Disbursement
- [x] DisbursementDetails
- [x] Discount
- [x] Dispute
- [x] DisputeEvidence
- [x] DisputeStatusHistory
- [x] DisputeTransaction
- [x] DocumentUpload
- [x] EuropeBankAccount
- [x] FacilitatedDetails
- [x] FacilitatorDetails
- [x] FundingDetails
- [x] GrantedPaymentInstrumentUpdate
- [x] IbanBankAccount
- [x] IdealPayment
- [x] IdealPaymentDetails
- [x] IndividualDetails
- [x] MasterpassCard
- [x] MasterpassCardDetails
- [x] Merchant
- [x] MerchantAccount
- [x] Modification
- [x] OAuthAccessRevocation
- [x] OAuthCredentials
- [x] OAuthResult
- [x] PartnerMerchant
- [x] PayPalAccount
- [x] PayPalDetails
- [x] PaymentInstrumentType
- [x] PaymentMethod
- [x] PaymentMethodNonce
- [x] PaymentMethodNonceDetails
- [x] Plan
- [x] RiskData
- [x] SamsungPayCard
- [x] SamsungPayCardDetails
- [x] SandboxValues
- [x] SearchCriteria
- [x] SettlementBatchSummary
- [x] StatusEvent
- [x] Subscription
- [x] SubscriptionDetails
- [x] SubscriptionStatusEvent
- [x] ThreeDSecureInfo
- [x] Transaction
- [x] TransactionDetails
- [x] TransactionLevelFeeReport
- [x] TransactionLevelFeeReportRow
- [x] TransactionLineItem
- [x] UnknownPaymentMethod
- [x] UsBankAccount
- [x] UsBankAccountDetails
- [x] UsBankAccountVerification
- [x] ValidationError
- [x] ValidationErrorCode
- [x] ValidationErrors
- [x] VenmoAccount
- [x] VenmoAccountDetails
- [x] VisaCheckoutCard
- [x] VisaCheckoutCardDetails
	
### Requests

- [ ] AddModificationRequest
- [ ] AddressRequest
- [ ] ApplicantDetailsAddressRequest
- [ ] ApplicantDetailsRequest
- [ ] BusinessAddressRequest
- [ ] BusinessRequest
- [x] AClientTokenOptionsRequest
- [x] AClientTokenRequest
- [ ] CreditCardAddressOptionsRequest
- [ ] CreditCardAddressRequest
- [ ] CreditCardOptionsRequest
- [ ] CreditCardRequest
- [ ] CreditCardVerificationBillingAddressRequest
- [ ] CreditCardVerificationCreditCardRequest
- [ ] CreditCardVerificationOptionsRequest
- [ ] CreditCardVerificationRequest
- [ ] CreditCardVerificationSearchRequest
- [ ] CustomerOptionsPayPalRequest
- [ ] CustomerOptionsPayPalShippingRequest
- [ ] CustomerOptionsRequest
- [ ] CustomerRequest
- [ ] CustomerSearchRequest
- [ ] DescriptorRequest
- [ ] DisputeSearchRequest
- [ ] DocumentUploadRequest
- [ ] FileEvidenceRequest
- [ ] FundingRequest
- [ ] IdsSearchRequest
- [ ] IndividualAddressRequest
- [ ] IndividualRequest
- [ ] IndustryRequest
- [ ] MerchantAccountCreateForCurrencyRequest
- [ ] MerchantAccountRequest
- [ ] ModificationRequest
- [ ] ModificationsRequest
- [ ] OAuthConnectUrlBusinessRequest
- [ ] OAuthConnectUrlRequest
- [ ] OAuthConnectUrlUserRequest
- [ ] OAuthCredentialsRequest
- [ ] OAuthRevokeAccessTokenRequest
- [ ] PayPalAccountOptionsRequest
- [ ] PayPalAccountRequest
- [ ] PayPalOnlyAccountRequest
- [ ] PaymentMethodAddressOptionsRequest
- [ ] PaymentMethodAddressRequest
- [ ] PaymentMethodDeleteRequest
- [ ] PaymentMethodForwardRequest
- [ ] PaymentMethodGrantRequest
- [ ] PaymentMethodGrantRevokeRequest
- [ ] PaymentMethodOptionsPayPalRequest
- [ ] PaymentMethodOptionsPayPalShippingRequest
- [ ] PaymentMethodOptionsRequest
- [ ] PaymentMethodRequest
- [ ] RiskDataCustomerRequest
- [ ] RiskDataTransactionRequest
- [ ] SEPAClientTokenRequest
- [ ] SearchRequest
- [ ] SettlementBatchSummaryRequest
- [ ] SubscriptionDescriptorRequest
- [ ] SubscriptionOptionsPayPalRequest
- [ ] SubscriptionOptionsRequest
- [ ] SubscriptionRequest
- [ ] SubscriptionSearchRequest
- [ ] SubscriptionTransactionOptionsRequest
- [ ] SubscriptionTransactionRequest
- [ ] TextEvidenceRequest
- [ ] TransactionAddressRequest
- [ ] TransactionApplePayCardRequest
- [ ] TransactionCloneRequest
- [ ] TransactionCreditCardRequest
- [ ] TransactionDescriptorRequest
- [ ] TransactionIndustryDataRequest
- [ ] TransactionIndustryRequest
- [ ] TransactionLevelFeeReportRequest
- [ ] TransactionLineItemRequest
- [ ] TransactionOptionsAmexRewardsRequest
- [ ] TransactionOptionsCloneRequest
- [ ] TransactionOptionsPayPalRequest
- [ ] TransactionOptionsRequest
- [ ] TransactionOptionsThreeDSecureRequest
- [ ] TransactionOptionsVenmoRequest
- [ ] TransactionPayPalRequest
- [ ] TransactionRefundRequest
- [ ] TransactionRequest
- [ ] TransactionSearchRequest
- [ ] TransactionThreeDSecurePassThruRequest
- [ ] TransparentRedirectRequest
- [ ] UpdateModificationRequest
- [ ] UsBankAccountVerificationConfirmRequest
- [ ] UsBankAccountVerificationSearchRequest
