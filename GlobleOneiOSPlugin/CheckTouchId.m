//
//  CheckTouchId.m
//  PluginCheckTouchId
//
//  Created by Dev on 11/16/18.
//  Copyright © 2018 Dev. All rights reserved.
//

#import "CheckTouchId.h"
#import "ViewController.h"
#import <LocalAuthentication/LocalAuthentication.h>

@implementation CheckTouchId

+ (void)startFingerAuthentication:(void (^) (BOOL *success, NSString *message))callback; {
    
    LAContext *context = [[LAContext alloc] init];
    NSError *error;
    if ([context canEvaluatePolicy:LAPolicyDeviceOwnerAuthenticationWithBiometrics error:&error]) {
        [context evaluatePolicy:LAPolicyDeviceOwnerAuthenticationWithBiometrics localizedReason:@"My Reason" reply:^(BOOL success, NSError * _Nullable error) {
            if (success) {
                callback(TRUE, @"Success");
            } else {
                callback(FALSE, error.localizedDescription);
            }
            
        }];
    } else{
        if (error.code == LAErrorTouchIDNotEnrolled) {
           callback(FALSE, error.localizedDescription);
        }
    }
}


@end
