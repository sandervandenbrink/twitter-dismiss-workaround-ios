//
//  BrokenViewController.m
//  twitter-dismiss-fix
//
//  Created by Sander van den Brink on 04/06/2018.
//  Copyright © 2018 Sander van den Brink. All rights reserved.
//

#import <TwitterKit/TwitterKit.h>

#import "BrokenViewController.h"

@interface BrokenViewController ()

@end

@implementation BrokenViewController

- (IBAction)onTweet {
    
    TWTRComposer *composer = [[TWTRComposer alloc] init];
    [composer setURL:[NSURL URLWithString:@"https://twitter.com/"]];
    [composer setText:@"Check this out!"];
    [composer showFromViewController:self completion:^(TWTRComposerResult result) {
        NSString *message = @"done";
        
        if (result == TWTRComposerResultCancelled)
            message = @"cancelled";
        
        NSLog(@"%@", [NSString stringWithFormat:@"Tweet was %@!", message]);
    }];
}

@end
