//
//  ThemesViewControllerDelegate.h
//  TinkoffShoolChat
//
//  Created by Denis Samodurov on 23/03/2018.
//  Copyright © 2018 Denis Samodurov. All rights reserved.
//

#import <UIKit/UIKit.h>

#ifndef ThemesViewControllerDelegate_h
#define ThemesViewControllerDelegate_h

@class ThemesViewController;

@protocol ThemesViewControllerDelegate<NSObject>
- (void)themesViewController: (ThemesViewController *)controller didSelectTheme:(UIColor *)selectedTheme;
@end

#endif /* ThemesViewControllerDelegate_h */
