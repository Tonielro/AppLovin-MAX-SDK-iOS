//
//  ALMAXFrameLayoutBannerAdViewController.m
//  DemoApp-ObjC
//
//  Created by Andrew Tian on 9/10/19.
//  Copyright © 2019 AppLovin Corporation. All rights reserved.
//

#import "ALMAXFrameLayoutBannerAdViewController.h"
#import <AppLovinSDK/AppLovinSDK.h>

@interface ALMAXFrameLayoutBannerAdViewController()<MAAdViewAdDelegate>
@property (nonatomic, strong) MAAdView *adView;
@end

@implementation ALMAXFrameLayoutBannerAdViewController

#pragma mark - View Lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.adView = [[MAAdView alloc] initWithAdUnitIdentifier: @"YOUR_AD_UNIT_ID"];
    self.adView.delegate = self;
    
    // Calculate dimensions
    CGFloat width = CGRectGetWidth(self.view.bounds); // Stretch to the width of the screen for banners to be fully functional
    CGFloat height = (UIDevice.currentDevice.userInterfaceIdiom == UIUserInterfaceIdiomPad) ? 90 : 50; // Banner height on iPhone and iPad is 50 and 90, respectively
    CGFloat x = 0;
    CGFloat y = 0;
    
    self.adView.frame = CGRectMake(x, y, width, height);
    
    // Set background or background color for banners to be fully functional
    self.adView.backgroundColor = UIColor.blackColor;
    
    [self.view addSubview: self.adView];
    
    // Load the first ad
    [self.adView loadAd];
}

#pragma mark - MAAdDelegate Protocol

- (void)didLoadAd:(MAAd *)ad
{
    [self logCallback: __PRETTY_FUNCTION__];
}

- (void)didFailToLoadAdForAdUnitIdentifier:(NSString *)adUnitIdentifier withErrorCode:(NSInteger)errorCode
{
    [self logCallback: __PRETTY_FUNCTION__];
}

- (void)didDisplayAd:(MAAd *)ad
{
    [self logCallback: __PRETTY_FUNCTION__];
}

- (void)didHideAd:(MAAd *)ad
{
    [self logCallback: __PRETTY_FUNCTION__];
}

- (void)didClickAd:(MAAd *)ad
{
    [self logCallback: __PRETTY_FUNCTION__];
}

- (void)didFailToDisplayAd:(MAAd *)ad withErrorCode:(NSInteger)errorCode
{
    [self logCallback: __PRETTY_FUNCTION__];
}

#pragma mark - MAAdViewAdDelegate Protocol

- (void)didExpandAd:(MAAd *)ad
{
    [self logCallback: __PRETTY_FUNCTION__];
}

- (void)didCollapseAd:(MAAd *)ad
{
    [self logCallback: __PRETTY_FUNCTION__];
}

@end
