//
//  AppController.h
//  MacOSX6-8
//
//  Created by Kasajima Yasuo on 11/09/07.
//  Copyright 2011 kyoto. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface AppController : NSObject <NSTableViewDelegate,NSTableViewDataSource>{
@private
    IBOutlet NSTableView *tableView;
    IBOutlet NSTextField *textField;
    IBOutlet NSButton *button;
    NSMutableArray *taskAry;
}

-(IBAction)pressAddBtn:(id)sender;

@end
