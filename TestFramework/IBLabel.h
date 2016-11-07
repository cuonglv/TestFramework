//
//  IBLabel.h
//  OnDeck
//
//  Created by Cuong Le on 2/25/15.
//  Copyright (c) 2015 Cuong Le. All rights reserved.
//

#import <UIKit/UIKit.h>

IB_DESIGNABLE
@interface IBLabel : UILabel

@property (assign) IBInspectable BOOL isBold;
@property (assign) IBInspectable BOOL isItalic;
@property (nonatomic, copy) IBInspectable NSString *fontSize;
@property (nonatomic, copy) IBInspectable NSString *textColorType;
@property (nonatomic, copy) IBInspectable NSString *backgroundColorType;

- (void)initVar;
- (void)setup;

#pragma mark - Public Func
- (void)updateUI;

@end
