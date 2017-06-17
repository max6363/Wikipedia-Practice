//
//  Utility.h
//  WikiPro
//
//  Created by Minhaz on 17/06/17.
//  Copyright © 2017 iqtech. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Utility : NSObject

+ (Utility *)sharedInstance;

- (void)setLogin:(BOOL)value;
- (BOOL)isLoggedIn;

@end
