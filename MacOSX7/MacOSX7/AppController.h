//
//  AppController.h
//  MacOSX7
//
//  Created by Kasajima Yasuo on 11/09/07.
//  Copyright 2011 kyoto. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface AppController : NSObject {
@private
    int fido;   
}
-(int)fido;
-(void)setFido:(int)x;
-(IBAction)incrementFido:(id)sender;
@end
