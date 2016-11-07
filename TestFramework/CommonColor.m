//
//  CommonColor.m
//  OnDeck
//
//  Created by Cuong Le on 6/17/15.
//  Copyright (c) 2015 Teamunify. All rights reserved.
//

#import "CommonColor.h"
#import "PLVColors.h"

@interface CommonColor() {
    NSDictionary *backgroundColorDictionary;
    NSDictionary *textColorDictionary;
    NSDictionary *lineColorDictionary;
}
@end

@implementation CommonColor

- (id)init {
    if (self = [super init]) {
        backgroundColorDictionary = @{ @"Red": kRedDangerHoverColor,
                                       @"Orange": kOrangeTextColor,
                                       @"Green": kGreenSuccessHoverColor,
                                       @"Blue": kBluePrimaryHoverColor,
                                       @"DarkBlue": kDarkBlueTextColor,
                                       @"LightGray": kLightGrayColor,
                                       @"Gray": kGreyBackgroundiPad,
                                       @"Gray2": kGray2BackgroundColor,
                                       @"Gray3": kGray3BackgroundColor,
                                       @"GrayFooter": kGrayBackgroundFooter,
                                       @"GrayTextField": kBackgroundColorGrayTextField,
                                       @"DarkGray": kBackgroundColorDarkGray,
                                       @"DarkerGray": kTextColorGray,
                                       @"White": [UIColor whiteColor],
                                       @"Black": [UIColor blackColor],
                                       @"Yellow": kYellowColor,
                                       @"LightYellow": kLightYellowColor,
                                       @"Maroon": kMaroonColor,
                                       @"Gold": kGoldColor,
                                       @"LightGold": kLightGoldColor,
                                       @"None": [UIColor clearColor]
                                      };
        
        textColorDictionary = @{@"Red": kRedDangerHoverColor,
                                @"Orange": kOrangeTextColor,
                                @"Green": kGreenSuccessHoverColor,
                                @"Black": [UIColor blackColor],
                                @"Blue": kBluePrimaryHoverColor,
                                @"DarkBlue": kDarkBlueTextColor,
                                @"LighterGray": kTextColorLighterGray,
                                @"DimmedGray": kTextColorDimmedGray,
                                @"LightGray": kTextColorLightGray,
                                @"Gray": kTextColorGray,
                                @"DarkGray": kTextColorDarkGray,
                                @"White": [UIColor whiteColor],
                                @"Maroon": kMaroonColor,
                                @"Gold": kGoldColor
                                };
        
        lineColorDictionary = @{@"Red": kRedDangerColor,
                                @"Green": kGreenSuccessColor,
                                @"Blue": kBluePrimaryColor,
                                @"LightGray": kGreyBackgroundiPad,
                                @"Gray": kLineColorGray,
                                @"GrayTextField": kLineColorGrayTextField,
                                @"DarkGray": kLineColorDarkGray,
                                @"White": [UIColor whiteColor],
                                @"Gold": kGoldColor
                                };
        
        self.grayBackgroundColor = [backgroundColorDictionary valueForKey:@"Gray"];
        self.gray2BackgroundColor = [backgroundColorDictionary valueForKey:@"Gray2"];
        self.gray3BackgroundColor = [backgroundColorDictionary valueForKey:@"Gray3"];
        self.darkGrayBackgroundColor = [backgroundColorDictionary valueForKey:@"DarkGray"];
        self.darkerGrayBackgroundColor = [backgroundColorDictionary valueForKey:@"DarkerGray"];
        self.lightGrayBackgroundColor = [backgroundColorDictionary valueForKey:@"LightGray"];
        self.lighterGrayBackgroundColor = [backgroundColorDictionary valueForKey:@"LighterGray"];
        self.redBackgroundColor = [backgroundColorDictionary valueForKey:@"Red"];
        self.greenBackgroundColor = [backgroundColorDictionary valueForKey:@"Green"];
        self.blueBackgroundColor = [backgroundColorDictionary valueForKey:@"Blue"];
        self.yellowBackgroundColor = [backgroundColorDictionary valueForKey:@"Yellow"];
        self.maroonBackgroundColor = [backgroundColorDictionary valueForKey:@"Maroon"];
        self.goldBackgroundColor = [backgroundColorDictionary valueForKey:@"Gold"];
        self.lightGoldBackgroundColor = [backgroundColorDictionary valueForKey:@"LightGold"];
        
        self.grayTextColor = [textColorDictionary valueForKey:@"Gray"];
        self.darkGrayTextColor = [textColorDictionary valueForKey:@"DarkGray"];
        self.darkerGrayTextColor = [textColorDictionary valueForKey:@"DarkerGray"];
        self.lightGrayTextColor = [textColorDictionary valueForKey:@"LightGray"];
        self.lighterGrayTextColor = [textColorDictionary valueForKey:@"LighterGray"];
        self.redTextColor = [textColorDictionary valueForKey:@"Red"];
        self.orangeTextColor = [textColorDictionary valueForKey:@"Orange"];
        self.greenTextColor = [textColorDictionary valueForKey:@"Green"];
        self.blueTextColor = [textColorDictionary valueForKey:@"Blue"];
        self.darkBlueTextColor = [textColorDictionary valueForKey:@"DarkBlue"];
        self.yellowTextColor = [textColorDictionary valueForKey:@"Yellow"];
        self.maroonTextColor = [textColorDictionary valueForKey:@"Maroon"];
        self.goldTextColor = [textColorDictionary valueForKey:@"Gold"];
        self.defaultTextColor = [textColorDictionary valueForKey:@"Default"];
        
        self.grayLineColor = [lineColorDictionary valueForKey:@"Gray"];
        self.darkGrayLineColor = [lineColorDictionary valueForKey:@"DarkGray"];
        self.darkerGrayLineColor = [lineColorDictionary valueForKey:@"DarkerGray"];
        self.lightGrayLineColor = [lineColorDictionary valueForKey:@"LightGray"];
        self.lighterGrayLineColor = [lineColorDictionary valueForKey:@"LighterGray"];
        self.redLineColor = [lineColorDictionary valueForKey:@"Red"];
        self.greenLineColor = [lineColorDictionary valueForKey:@"Green"];
        self.blueLineColor = [lineColorDictionary valueForKey:@"Blue"];
        self.yellowLineColor = [lineColorDictionary valueForKey:@"Yellow"];
        self.maroonLineColor = [lineColorDictionary valueForKey:@"Maroon"];
        self.goldLineColor = [lineColorDictionary valueForKey:@"Gold"];
    }
    return self;
}

+ (CommonColor *)instance {
    static CommonColor *instance_ = nil;
    static dispatch_once_t onceToken = 0;
    dispatch_once(&onceToken, ^{
        instance_ = [[CommonColor alloc] init];
    });
    return instance_;
}

#pragma mark - Public Func
- (UIColor *)backgroundColorFromString:(NSString *)colorString {
    UIColor *colorFromDictionary = [backgroundColorDictionary valueForKey:colorString];
    if (colorFromDictionary)
        return colorFromDictionary;
        
    if ([colorString hasPrefix:@"#"])
        return [UIColor colorFromHexString:colorString];
    
    return nil;
}

- (UIColor *)textColorFromString:(NSString *)colorString {
    UIColor *colorFromDictionary = [textColorDictionary valueForKey:colorString];
    if (colorFromDictionary)
        return colorFromDictionary;
    
    if ([colorString hasPrefix:@"#"])
        return [UIColor colorFromHexString:colorString];
    
    return textColorDictionary[@"DarkGray"];
}

- (UIColor *)lineColorFromString:(NSString *)colorString {
    UIColor *colorFromDictionary = [lineColorDictionary valueForKey:colorString];
    if (colorFromDictionary)
        return colorFromDictionary;
    
    if ([colorString hasPrefix:@"#"])
        return [UIColor colorFromHexString:colorString];
    
    return nil;
}

@end
