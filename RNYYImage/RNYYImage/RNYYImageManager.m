//
//  RNYYImageManager.m
//  RNYYImage
//

#import <Foundation/Foundation.h>
#import <React/RCTUIManager.h>
#import <React/UIView+React.h>
#import "RNYYImageManager.h"
#import "RNYYImage.h"


@implementation RNYYImageManager

RCT_EXPORT_MODULE();

@synthesize bridge = _bridge;

- (UIView *)view
{
    RNYYImage *animatedImage = [RNYYImage new];
    return animatedImage;
}

- (dispatch_queue_t) methodQueue{
    return dispatch_get_main_queue();
}

RCT_EXPORT_VIEW_PROPERTY(src, NSString);
RCT_EXPORT_VIEW_PROPERTY(contentMode, NSInteger);
RCT_EXPORT_VIEW_PROPERTY(onLoadEnd, RCTDirectEventBlock)


- (NSDictionary *) constantsToExport {
    return @{
             @"ScaleAspectFit": @(UIViewContentModeScaleAspectFit),
             @"ScaleAspectFill": @(UIViewContentModeScaleAspectFill),
             @"ScaleToFill": @(UIViewContentModeScaleToFill)
             };
}

@end
