//
//  AppController.h
//  MacOSX5-7
//
//  Created by Kasajima Yasuo on 11/09/07.
//  Copyright 2011 kyoto. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface AppController : NSObject {
@private
    IBOutlet NSTextField *inputTextField;
    IBOutlet NSTextField *outputTextField;
}

-(IBAction)pressCountCharactersBtn:(id)sender;

@end
