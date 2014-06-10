#import "BTUI.h"
#import "BTUIUtil.h"
#import "UIColor+BTUI.h"

#import "BTUIMasterCardVectorArtView.h"
#import "BTUIJCBVectorArtView.h"
#import "BTUIMaestroVectorArtView.h"
#import "BTUIVisaVectorArtView.h"
#import "BTUIDiscoverVectorArtView.h"
#import "BTUIUnknownCardVectorArtView.h"
#import "BTUIDinersClubVectorArtView.h"
#import "BTUIAmExVectorArtView.h"
#import "BTUIPayPalMonogramCardView.h"

@implementation BTUI

+ (BTUI *)braintreeTheme {
    static BTUI *_sharedBraintreeTheme;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sharedBraintreeTheme = [[BTUI alloc] init];
    });
    return _sharedBraintreeTheme;
}

- (UIColor *)idealGray {
    return [UIColor bt_colorWithBytesR:128 G:128 B:128];
}

- (UIColor *)viewBackgroundColor {
    return [UIColor bt_colorFromHex:@"f3f4f6" alpha:1.0f];
}

- (UIColor *)callToActionColor {
    return [UIColor bt_colorWithBytesR:7 G:158 B:222];
}

- (UIColor *)callToActionColorHighlighted {
    return [UIColor colorWithRed:0.375 green:0.635 blue:0.984 alpha:1.000];
}

- (UIColor *)disabledButtonColor {
    return [UIColor bt_colorFromHex:@"#BCBFC4" alpha:1.0f];
}

- (UIColor *)titleColor {
    return [UIColor bt_colorWithBytesR:46 G:51 B:58];
}

- (UIColor *)detailColor {
    return [UIColor bt_colorWithBytesR:98 G:102 B:105];
}

- (UIColor *)borderColor {
    return [UIColor bt_colorWithBytesR:216 G:216 B:216];
}

- (UIColor *)textFieldTextColor {
    return [UIColor bt_colorWithBytesR:26 G:26 B:26];
}

- (UIColor *)textFieldPlaceholderColor {
    return [self idealGray];
}

- (UIColor *)sectionHeaderTextColor {
    return [self idealGray];
}

- (UIColor *)defaultTintColor {
    return [self palBlue];
}

- (UIColor *)cardHintBorderColor {
    return [UIColor bt_colorWithBytesR:0 G:0 B:0 A:20];
}

- (UIColor *)errorBackgroundColor {
    return [UIColor bt_colorWithBytesR:250 G:229 B:232];
}

- (UIColor *)errorForegroundColor {
    return [UIColor bt_colorWithBytesR:208 G:2 B:27];
}

#pragma mark PayPal Colors

- (UIColor *)payBlue {
    return [UIColor bt_colorWithBytesR:12 G:141 B:196];
}

- (UIColor *)palBlue {
    return [UIColor bt_colorWithBytesR:1 G:156 B:222];
}

- (UIColor *)payPalButtonBlue {
    return [self palBlue];
}

- (UIColor *)payPalButtonActiveBlue {
    return [self payBlue];
}

#pragma mark Adjustments

- (CGFloat) highlightedBrightnessAdjustment {
    return 0.6;
}

#pragma mark - Appearance

- (CGFloat)cornerRadius {
    return 4.0f;
}

- (CGFloat)borderWidth {
    return 0.5f;
}

- (CGFloat)formattedEntryKerning {
    return 8.0f;
}

- (CGFloat)horizontalMargin {
    return 17.0f;
}

#pragma mark - Type

- (UIFont *)controlFont {
    return [UIFont fontWithName:@"HelveticaNeue-Light" size:17.0f];
}

- (UIFont *)controlTitleFont {
    return [UIFont fontWithName:@"HelveticaNeue-Bold" size:17.0f];
}

- (UIFont *)controlDetailFont {
    return [UIFont fontWithName:@"HelveticaNeue" size:17.0f];
}

- (UIFont *)textFieldFont {
    return [UIFont fontWithName:@"HelveticaNeue" size:17.0f];
}

- (UIFont *)sectionHeaderFont {
    return [UIFont fontWithName:@"HelveticaNeue" size:14.0f];
}

#pragma mark - String Attributes

- (NSDictionary *)textFieldTextAttributes {
    return @{NSFontAttributeName: self.textFieldFont,
             NSForegroundColorAttributeName: self.textFieldTextColor};
}

- (NSDictionary *)textFieldPlaceholderAttributes {
    return @{NSFontAttributeName: self.textFieldFont,
             NSForegroundColorAttributeName: self.textFieldPlaceholderColor};
}

#pragma mark Transitions

- (CGFloat)quickTransitionDuration {
    return 0.1f;
}

- (CGFloat)transitionDuration {
    return 0.2f;
}

- (CGFloat)minimumVisibilityTime {
    return 0.5f;
}

#pragma mark Icons

- (BTUIVectorArtView *)vectorArtViewForPaymentMethodType:(BTUIPaymentMethodType)type {
    switch (type) {
        case BTUIPaymentMethodTypeVisa:
            return [BTUIVisaVectorArtView new];
        case BTUIPaymentMethodTypeMasterCard:
            return [BTUIMasterCardVectorArtView new];
        case BTUIPaymentMethodTypePayPal:
            return [BTUIPayPalMonogramCardView new];
        case BTUIPaymentMethodTypeDinersClub:
            return [BTUIDinersClubVectorArtView new];
        case BTUIPaymentMethodTypeJCB:
            return [BTUIJCBVectorArtView new];
        case BTUIPaymentMethodTypeMaestro:
            return [BTUIMaestroVectorArtView new];
        case BTUIPaymentMethodTypeDiscover:
            return [BTUIDiscoverVectorArtView new];
        case BTUIPaymentMethodTypeUKMaestro:
            return [BTUIMaestroVectorArtView new];
        case BTUIPaymentMethodTypeAMEX:
            return [BTUIAmExVectorArtView new];
        case BTUIPaymentMethodTypeSolo:
        case BTUIPaymentMethodTypeLaser:
        case BTUIPaymentMethodTypeSwitch:
        case BTUIPaymentMethodTypeUnionPay:
        case BTUIPaymentMethodTypeUnknown:
            return [BTUIUnknownCardVectorArtView new];
    }
}


@end

