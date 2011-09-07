//
//  AppController.m
//  MacOSX5-7
//
//  Created by Kasajima Yasuo on 11/09/07.
//  Copyright 2011 kyoto. All rights reserved.
//

#import "AppController.h"


@implementation AppController

- (id)init
{
    self = [super init];
    if (self) {
        // Initialization code here.
    }
    
    return self;
}

- (void)dealloc
{
    [super dealloc];
}

-(IBAction)pressCountCharactersBtn:(id)sender{
    NSString *string = [inputTextField stringValue];
    NSInteger length = [string length];
    NSString *outputString = [NSString stringWithFormat:@"この'%@'の文字数は%dです",string,length];
    [outputTextField setStringValue:outputString];
}

@end
