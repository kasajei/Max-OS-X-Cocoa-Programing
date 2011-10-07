//
//  MyDocument.m
//  MacOSX8
//
//  Created by Kasajima Yasuo on 11/09/07.
//  Copyright 2011 kyoto. All rights reserved.
//

#import "MyDocument.h"
#import "Person.h"

@implementation MyDocument

- (id)init
{
    self = [super init];
    if (self) {
        // Add your subclass-specific initialization here.
        // If an error occurs here, send a [self release] message and return nil.
        employees = [[NSMutableArray alloc] init];
    }
    return self;
}

-(void)dealloc{
    [self setEmployees:nil];
    [super dealloc];
}

-(void)setEmployees:(NSMutableArray *)a{
    if(a == employees) return;
    [a retain];
    [employees release];
    employees = a;
}

- (NSString *)windowNibName
{
    // Override returning the nib file name of the document
    // If you need to use a subclass of NSWindowController or if your document supports multiple NSWindowControllers, you should remove this method and override -makeWindowControllers instead.
    return @"MyDocument";
}

- (void)windowControllerDidLoadNib:(NSWindowController *)aController
{
    [super windowControllerDidLoadNib:aController];
    // Add any code here that needs to be executed once the windowController has loaded the document's window.
}

- (NSData *)dataOfType:(NSString *)typeName error:(NSError **)outError {
    /*
     Insert code here to write your document to data of the specified type. If outError != NULL, ensure that you create and set an appropriate error when returning nil.
    You can also choose to override -fileWrapperOfType:error:, -writeToURL:ofType:error:, or -writeToURL:ofType:forSaveOperation:originalContentsURL:error: instead.
    */
    if (outError) {
        *outError = [NSError errorWithDomain:NSOSStatusErrorDomain code:unimpErr userInfo:NULL];
    }
    return nil;
}

- (BOOL)readFromData:(NSData *)data ofType:(NSString *)typeName error:(NSError **)outError {
    /*
    Insert code here to read your document from the given data of the specified type. If outError != NULL, ensure that you create and set an appropriate error when returning NO.
    You can also choose to override -readFromFileWrapper:ofType:error: or -readFromURL:ofType:error: instead.
    */
    if (outError) {
        *outError = [NSError errorWithDomain:NSOSStatusErrorDomain code:unimpErr userInfo:NULL];
    }
    return YES;
}

-(void)insertObject:(Person *)p inEmployeesAtIndex:(int)index{
    NSLog(@"add %@ to %@",p,employees);
    NSUndoManager *undo = [self undoManager];
    [[undo prepareWithInvocationTarget:self] removeObjectFromEmployeesAtIndex:index];
    if (![undo isUndoing]) {
        [undo setActionName:@"Insert Person"];
    }
    
    //Persopnを配列に追加する
    [employees insertObject:p atIndex:index];
}

-(void)removeObjectFromEmployeesAtIndex:(int)index{
    Person *p = [employees objectAtIndex:index];
    NSLog(@"removing %@ from %@", p , employees);
    NSUndoManager *undo = [self undoManager];
    [[undo prepareWithInvocationTarget:self] insertObject:p inEmployeesAtIndex:index];
    if (![undo isUndoing]) {
        [undo setActionName:@"Delete Person"];
    }
    
    [employees removeObjectAtIndex:index];
}


@end
