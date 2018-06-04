//
//  ViewController.m
//  twitter-dismiss-fix
//
//  Created by Sander van den Brink on 17/05/2018.
//  Copyright © 2018 Sander van den Brink. All rights reserved.
//

#import "ViewController.h"

#import <TwitterKit/TwitterKit.h>

@interface ViewController ()

@end

@implementation ViewController

- (IBAction)onShowWorkingViewController {
    
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    UIViewController *vc = [storyboard instantiateViewControllerWithIdentifier:@"WorkaroundViewController"];
    [self presentViewController:vc animated:YES completion:nil];
}

- (IBAction)onShowBrokenViewController {
    
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    UIViewController *vc = [storyboard instantiateViewControllerWithIdentifier:@"BrokenViewController"];
    [self presentViewController:vc animated:YES completion:nil];
}

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
