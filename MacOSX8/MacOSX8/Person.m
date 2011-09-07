
//
//  Person.m
//  MacOSX8
//
//  Created by Kasajima Yasuo on 11/09/07.
//  Copyright 2011 kyoto. All rights reserved.
//

#import "Person.h"


@implementation Person

@synthesize personName;
@synthesize expectedRaise;

- (id)init
{
    self = [super init];
    if (self) {
        // Initialization code here.
        expectedRaise = 5.0;
        personName = @"New Person";
    }
    
    return self;
}

- (void)dealloc
{
    [personName release];
    [super dealloc];
}

-(void)setNilValueForKey:(NSString *)key{
    if ([key isEqual:@"expectedRaise"]) {
        [self setExpectedRaise:0.0];
    }else{
        [super setNilValueForKey:key];
    }
}

@end
