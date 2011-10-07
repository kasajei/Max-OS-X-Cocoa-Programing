//
//  MyDocument.h
//  MacOSX8
//
//  Created by Kasajima Yasuo on 11/09/07.
//  Copyright 2011 kyoto. All rights reserved.
//

#import <Cocoa/Cocoa.h>
@class Person;

@interface MyDocument : NSDocument {
@private
    NSMutableArray *employees;
}

-(void)setEmployees:(NSMutableArray *)a;
- (void)insertObject:(Person *)p inEmployeesAtIndex:(int)index;
- (void)removeObjectFromEmployeesAtIndex:(int)index;
@end
