//
//  Person.h
//  MacOSX8
//
//  Created by Kasajima Yasuo on 11/09/07.
//  Copyright 2011 kyoto. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Person : NSObject {
@private
    NSString *personName;
    float expectedRaise;
}

@property (readwrite,copy) NSString *personName;
@property (readwrite)float expectedRaise;

@end
