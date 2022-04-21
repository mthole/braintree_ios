#import <UIKit/UIKit.h>

/// Version number
FOUNDATION_EXPORT double BraintreeDataCollectorVersionNumber;

/// Version string
FOUNDATION_EXPORT const unsigned char BraintreeDataCollectorVersionString[];

#if __has_include(<Braintree/BraintreeDataCollector.h>)
#import <Braintree/BraintreeCore.h>
#import <Braintree/BTDataCollector.h>
#import <Braintree/BTConfiguration+DataCollector.h>
#import <Braintree/Kount/KDataCollector.h>
#import <Braintree/Kount/KountAnalyticsViewController.h>
#else
#import <BraintreeCore/BraintreeCore.h>
#import <BraintreeDataCollector/BTDataCollector.h>
#import <BraintreeDataCollector/BTConfiguration+DataCollector.h>
#import <BraintreeDataCollector/Kount/KDataCollector.h>
#import <BraintreeDataCollector/Kount/KountAnalyticsViewController.h>
#endif
