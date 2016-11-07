//
//  IBLabel.m
//  OnDeck
//
//  Created by Cuong Le on 2/25/15.
//  Copyright (c) 2015 Cuong Le. All rights reserved.
//

#import "IBLabel.h"
#import "CommonColor.h"

@implementation IBLabel
@synthesize isBold, isItalic;

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        [self initVar];
#if !TARGET_INTERFACE_BUILDER
        [self setup];
#endif
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    if (self = [super initWithCoder:aDecoder]) {
        [self initVar];
    }
    return self;
}

- (void)awakeFromNib {
    [super awakeFromNib];
    [self setup];
}

- (void)prepareForInterfaceBuilder {
    [super prepareForInterfaceBuilder];
    [self setup]; 
}

- (void)initVar {
    self.fontSize = @"16";
    self.clipsToBounds = YES; //to show cornerRadius
}

- (void)setup {
    [self updateUI];
}

- (void)setText:(NSString *)text {
    [super setText:text];
}

#pragma mark - Property
- (BOOL)isBold {
    return isBold;
}

- (void)setIsBold:(BOOL)value {
    isBold = value;
    [self updateFont];
}

- (BOOL)isItalic {
    return isItalic;
}

- (void)setIsItalic:(BOOL)value {
    isItalic = value;
    [self updateFont];
}

- (void)setFontSize:(NSString *)value {
    _fontSize = value;
    [self updateFont];
}

- (void)setTextColorType:(NSString *)value {
    _textColorType = value;
    [self updateTextColor];
}

- (void)setBackgroundColorType:(NSString *)value {
    _backgroundColorType = value;
    [self updateBackgroundColor];
}

#pragma mark - Private Func
- (void)updateFont {
    self.font = [UIFont fontWithName:@"AvenirNextCondensed-DemiBold" size:[self.fontSize floatValue]];
}

- (void)updateTextColor {
    self.textColor = [[CommonColor instance] textColorFromString:self.textColorType];
}

- (void)updateBackgroundColor {
    self.backgroundColor = [[CommonColor instance] backgroundColorFromString:self.backgroundColorType];
}

#pragma mark - Public Func
- (void)updateUI {
    [self updateFont];
    [self updateTextColor];
    [self updateBackgroundColor];
}

@end
