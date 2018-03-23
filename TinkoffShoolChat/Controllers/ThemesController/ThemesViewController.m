//
//  ThemesViewController.m
//  TinkoffShoolChat
//
//  Created by Denis Samodurov on 23/03/2018.
//  Copyright © 2018 Denis Samodurov. All rights reserved.
//

#import "ThemesViewController.h"

@implementation ThemesViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupModel];
    UIColor *color = [[self getModel] getFirstThemeColor];
    self.view.backgroundColor = color;
}

- (void)setupModel{
    UIColor *firstColor = [Themes firstColor];
    UIColor *secondColor = [Themes secondColor];
    UIColor *thirdColor = [Themes secondColor];
    
    [self setModel:[[Themes alloc] initFirstThemeColor: firstColor secondThemeColor: secondColor therdThemeColor: thirdColor]];
};

- (void)setModel:(Themes *)model{
    _model = model;
}

- (Themes *)getModel{
    return _model;
}

- (id<ThemesViewControllerDelegate>) getDelegate {
    return _delegate;
}

- (void) setDelegate:(id<ThemesViewControllerDelegate>)delegate {
    _delegate = delegate;
}

- (IBAction)returnToPreviousScreen:(UIBarButtonItem *)sender {
    [self dismissViewControllerAnimated:NO completion:nil];
}

- (IBAction)changeToFirstTheme:(UIButton *)sender {
    [self.delegate themesViewController:self didSelectTheme: [Themes firstColor]];
    [self.view setBackgroundColor:[Themes firstColor]];

}

- (IBAction)changeToSecondTheme:(UIButton *)sender {
    [self.delegate themesViewController:self didSelectTheme: [Themes secondColor]];
    [self.view setBackgroundColor:[Themes secondColor]];
}

- (IBAction)changeToThirdTheme:(UIButton *)sender {
    [self.delegate themesViewController:self didSelectTheme: [Themes thirdColor]];
    [self.view setBackgroundColor:[Themes thirdColor]];
}

- (void)dealloc {
    [_model release];
    [super dealloc];
}

@end

