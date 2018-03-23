//
//  Themes.h
//  TinkoffShoolChat
//
//  Created by Denis Samodurov on 23/03/2018.
//  Copyright © 2018 Denis Samodurov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

#ifndef Themes_h
#define Themes_h

@interface Themes : NSObject
    @property (copy, nonatomic) UIColor* firstThemeColor;
    @property (copy, nonatomic) UIColor* secondThemeColor;
    @property (copy, nonatomic) UIColor* thirdThemeColor;

+ (UIColor *)firstColor;
+ (UIColor *)secondColor;
+ (UIColor *)thirdColor;

- (UIColor *)getFirstThemeColor;
- (void)setFirstThemeColor:(UIColor *)firstThemeColor;

- (UIColor *)getSecondThemeColor;
- (void)setSecondThemeColor:(UIColor *)firstThemeColor;

- (UIColor *)getThirdThemeColor;
- (void)setThirdThemeColor:(UIColor *)firstThemeColor;

- (instancetype)initFirstThemeColor: (UIColor *) firstThemeColor secondThemeColor: (UIColor *) secondThemeColor therdThemeColor: (UIColor *) thirdThemeColor;
@end

#endif /* Themes_h */
