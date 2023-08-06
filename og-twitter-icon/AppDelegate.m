//
//  AppDelegate.m
//  og-twitter-icon
//
//  Created by Aston Motes on 8/5/23.
//

#import "AppDelegate.h"

@implementation AppDelegate

- (void)applicationDidBecomeActive:(UIApplication *)application {
    NSURL *twitterAppURL = [NSURL URLWithString:@"twitter://"];
    
    BOOL canOpenTwitter = [[UIApplication sharedApplication] canOpenURL:twitterAppURL];
    if (canOpenTwitter) {
        [[UIApplication sharedApplication] openURL:twitterAppURL options:@{} completionHandler:nil];
    }
}

@end
