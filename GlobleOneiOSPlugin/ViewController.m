//
//  ViewController.m
//  GlobleOneiOSPlugin
//
//  Created by dev on 11/19/18.
//  Copyright © 2018 GlobleOneiOSPlugin. All rights reserved.
//

#import "ViewController.h"
#import "CheckTouchId.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [CheckTouchId startFingerAuthentication:^(BOOL * _Nonnull success, NSString * _Nonnull message) {
        NSLog(@"%@",message);
    }];
}


@end
