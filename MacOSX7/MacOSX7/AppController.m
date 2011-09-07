//
//  AppController.m
//  MacOSX7
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
        [self setValue:[NSNumber numberWithInt:5] forKey:@"fido"];
        NSNumber *n = [self valueForKey:@"fido"];
        NSLog(@"fodo = %@",n);
    }
    
    return self;
}

- (void)dealloc
{
    [super dealloc];
}

-(int)fido{
    NSLog(@"-fido");
    return fido;
}

-(void)setFido:(int)x{
    NSLog(@"-setFido");
    fido = x;
}

-(IBAction)incrementFido:(id)sender{
    [self setFido:[self fido]+1];
}

@end
