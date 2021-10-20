#if __has_include(<Braintree/BraintreePaymentFlow.h>)
#import <Braintree/BTLocalPaymentRequest.h>
#else
#import <BraintreePaymentFlow/BTLocalPaymentRequest.h>
#endif

@interface BTLocalPaymentRequest ()

/**
 Handles the return URL and completes and post processing.

 @param url The URL to check.
 */
- (void)handleOpenURL:(NSURL *)url;

@end
