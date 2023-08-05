//
//  AppDelegate.m
//  og-twitter-icon
//
//  Created by Aston Motes on 8/5/23.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    NSURL *twitterAppURL = [NSURL URLWithString:@"twitter://"];
    
    BOOL canOpenTwitter = [[UIApplication sharedApplication] canOpenURL:twitterAppURL];
    if (canOpenTwitter) {
        [[UIApplication sharedApplication] openURL:twitterAppURL options:@{} completionHandler:nil];
    }

    exit(0);
}

@end
