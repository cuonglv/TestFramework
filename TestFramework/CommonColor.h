//
//  CommonColor.h
//  OnDeck
//
//  Created by Cuong Le on 6/17/15.
//  Copyright (c) 2015 Teamunify. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface CommonColor : NSObject

@property (nonatomic, strong) UIColor *grayBackgroundColor;
@property (nonatomic, strong) UIColor *gray2BackgroundColor;
@property (nonatomic, strong) UIColor *gray3BackgroundColor;
@property (nonatomic, strong) UIColor *darkGrayBackgroundColor;
@property (nonatomic, strong) UIColor *darkerGrayBackgroundColor;
@property (nonatomic, strong) UIColor *lightGrayBackgroundColor;
@property (nonatomic, strong) UIColor *lighterGrayBackgroundColor;
@property (nonatomic, strong) UIColor *redBackgroundColor;
@property (nonatomic, strong) UIColor *greenBackgroundColor;
@property (nonatomic, strong) UIColor *blueBackgroundColor;
@property (nonatomic, strong) UIColor *yellowBackgroundColor;
@property (nonatomic, strong) UIColor *maroonBackgroundColor;
@property (nonatomic, strong) UIColor *goldBackgroundColor;
@property (nonatomic, strong) UIColor *lightGoldBackgroundColor;

@property (nonatomic, strong) UIColor *defaultTextColor;
@property (nonatomic, strong) UIColor *grayTextColor;
@property (nonatomic, strong) UIColor *darkGrayTextColor;
@property (nonatomic, strong) UIColor *darkerGrayTextColor;
@property (nonatomic, strong) UIColor *lightGrayTextColor;
@property (nonatomic, strong) UIColor *lighterGrayTextColor;
@property (nonatomic, strong) UIColor *redTextColor;
@property (nonatomic, strong) UIColor *orangeTextColor;
@property (nonatomic, strong) UIColor *greenTextColor;
@property (nonatomic, strong) UIColor *blueTextColor;
@property (nonatomic, strong) UIColor *darkBlueTextColor;
@property (nonatomic, strong) UIColor *yellowTextColor;
@property (nonatomic, strong) UIColor *maroonTextColor;
@property (nonatomic, strong) UIColor *goldTextColor;

@property (nonatomic, strong) UIColor *grayLineColor;
@property (nonatomic, strong) UIColor *darkGrayLineColor;
@property (nonatomic, strong) UIColor *darkerGrayLineColor;
@property (nonatomic, strong) UIColor *lightGrayLineColor;
@property (nonatomic, strong) UIColor *lighterGrayLineColor;
@property (nonatomic, strong) UIColor *redLineColor;
@property (nonatomic, strong) UIColor *greenLineColor;
@property (nonatomic, strong) UIColor *blueLineColor;
@property (nonatomic, strong) UIColor *yellowLineColor;
@property (nonatomic, strong) UIColor *maroonLineColor;
@property (nonatomic, strong) UIColor *goldLineColor;

+ (CommonColor *)instance;

#pragma mark - Public Func
- (UIColor *)backgroundColorFromString:(NSString *)colorString;
- (UIColor *)textColorFromString:(NSString *)colorString;
- (UIColor *)lineColorFromString:(NSString *)colorString;

@end
