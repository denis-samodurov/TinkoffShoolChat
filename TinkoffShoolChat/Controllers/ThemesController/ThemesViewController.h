//
//  ThemesViewController.h
//  TinkoffShoolChat
//
//  Created by Denis Samodurov on 23/03/2018.
//  Copyright © 2018 Denis Samodurov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "Themes.h"
#import "ThemesViewControllerDelegate.h"

#ifndef ThemesViewController_h
#define ThemesViewController_h

 @interface ThemesViewController : UIViewController
    @property(assign, nonatomic) Themes* model;
    @property(assign, nonatomic) id<ThemesViewControllerDelegate> delegate;
@end

#endif /* ThemesViewController_h */
