//
//  Themes.m
//  TinkoffShoolChat
//
//  Created by Denis Samodurov on 23/03/2018.
//  Copyright © 2018 Denis Samodurov. All rights reserved.
//

#import "Themes.h"

@implementation Themes

- (instancetype)initFirstThemeColor: (UIColor *) firstThemeColor
        secondThemeColor: (UIColor *) secondThemeColor
        therdThemeColor: (UIColor *) thirdThemeColor {
    
    if([super init]) {
        _firstThemeColor = firstThemeColor;
        _secondThemeColor = secondThemeColor;
        _thirdThemeColor = thirdThemeColor;
    }
    
    return self;
}

- (void)dealloc {
    [super dealloc];
}

+ (UIColor *)firstColor {
    return  [UIColor colorWithRed:255.0f/255.0f
                            green:233.0f/255.0f
                             blue:37.0f/255.0f
                            alpha:1.0f];
}

+ (UIColor *)secondColor {
    return [UIColor colorWithRed:72.0f/255.0f
                           green:255.0f/255.0f
                            blue:88.0f/255.0f
                           alpha:1.0f];
}

+ (UIColor *)thirdColor {
    return [UIColor colorWithRed:119.0f/255.0f
                           green:250.0f/255.0f
                            blue:255.0f/255.0f
                           alpha:1.0f];
}

- (UIColor *)getFirstThemeColor {
    return _firstThemeColor;
}

- (void)setFirstThemeColor:(UIColor *)firstThemeColor{
    _firstThemeColor = firstThemeColor;
}

- (UIColor *)getSecondThemeColor {
    return _secondThemeColor;
}

- (void)setSecondThemeColor:(UIColor *)secondThemeColor{
    _secondThemeColor = secondThemeColor;
}

- (UIColor *)getThirdThemeColor {
    return _thirdThemeColor;
}

- (void)setThirdThemeColor:(UIColor *)thirdThemeColor{
    _thirdThemeColor = thirdThemeColor;
}
@end
