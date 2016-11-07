//
//  UIColor+Ext.h
//  MainSet
//
//  Created by Cuong Le on 1/8/14.
//  Copyright (c) 2014 Team Unify LLC. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface UIColor (Ext)

+ (UIColor *)colorWithRedInt:(int)red greenInt:(int)green blueInt:(int)blue;
+ (UIColor *)colorFromHexString:(NSString *)hexString;
+ (UIColor *)colorFromRGB:(NSUInteger)rgbValue;
- (UIColor *)lighterColor;
- (UIColor *)darkerColor;
+ (UIColor *)randomColor;

@end
