//
//  MacOSX6_7AppDelegate.m
//  MacOSX6-7
//
//  Created by Kasajima Yasuo on 11/09/07.
//  Copyright 2011 kyoto. All rights reserved.
//

#import "MacOSX6_7AppDelegate.h"

@implementation MacOSX6_7AppDelegate

@synthesize window;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
}

-(NSSize)windowWillResize:(NSWindow*)sender toSize:(NSSize)frameSize{
    return NSMakeSize(frameSize.width, frameSize.width*2);
}

@end
