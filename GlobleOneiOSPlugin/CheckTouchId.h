//
//  CheckTouchId.h
//  PluginCheckTouchId
//
//  Created by Dev on 11/16/18.
//  Copyright © 2018 Dev. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface CheckTouchId : NSObject
+ (void)startFingerAuthentication:(void (^) (BOOL *success, NSString *message))callback;

@end

NS_ASSUME_NONNULL_END
