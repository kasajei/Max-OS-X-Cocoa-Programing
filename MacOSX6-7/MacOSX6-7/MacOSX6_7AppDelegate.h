//
//  MacOSX6_7AppDelegate.h
//  MacOSX6-7
//
//  Created by Kasajima Yasuo on 11/09/07.
//  Copyright 2011 kyoto. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface MacOSX6_7AppDelegate : NSObject <NSApplicationDelegate> {
@private
    NSWindow *window;
}

@property (assign) IBOutlet NSWindow *window;

@end
