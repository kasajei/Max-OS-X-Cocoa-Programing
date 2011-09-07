//
//  AppController.m
//  MacOSX6-8
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
        taskAry = [[NSMutableArray alloc] init];
    }
    
    return self;
}

- (void)dealloc
{
    [super dealloc];
}

-(IBAction)pressAddBtn:(id)sender{
    [taskAry addObject:[textField stringValue]];
    [tableView reloadData];
    [textField setStringValue:@""];
}

-(NSInteger)numberOfRowsInTableView:(NSTableView *)tableView{
    return [taskAry count];
}

-(id)tableView:(NSTableView *)tableView objectValueForTableColumn:(NSTableColumn *)tableColumn row:(NSInteger)row{
    NSString *v = [taskAry objectAtIndex:row];
    return v;
}

-(void)tableViewSelectionDidChange:(NSNotification *)notification{
    NSInteger row = [tableView selectedRow];
    NSLog(@"%@",notification);
    if (row==-1) {
        return;
    }
    NSLog(@"%@",[taskAry objectAtIndex:row]);
}

@end
