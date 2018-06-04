//
//  AppDelegate.m
//  twitter-dismiss-fix
//
//  Created by Sander van den Brink on 17/05/2018.
//  Copyright © 2018 Sander van den Brink. All rights reserved.
//

#import "AppDelegate.h"

#import <TwitterKit/TwitterKit.h>

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    // REPLACE KEYS
    NSString *key = @"REPLACE_WITH_KEY";
    NSString *secret = @"REPLACE_WITH_KEY";
    
    [[Twitter sharedInstance] startWithConsumerKey:key consumerSecret:secret];
    NSLog(@"[Twitter] version %@", [Twitter sharedInstance].version);
    
    return YES;
}


- (BOOL)application:(UIApplication *)app openURL:(NSURL *)url options:(NSDictionary<UIApplicationOpenURLOptionsKey,id> *)options {
    
    return [[Twitter sharedInstance] application:app openURL:url options:options];
}


@end
