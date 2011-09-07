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
    //inputTextFieldから文字を取ってくる
    NSString *string = [inputTextField stringValue];
    //inputTextFieldの文字数を数える
    NSInteger length = [string length];
    //outputTextFieldに入れる文字を作る
    NSString *outputString = [NSString stringWithFormat:@"この'%@'の文字数は%dです",string,length];
    //outputTextFieldに文字を入れる。
    [outputTextField setStringValue:outputString];
}

@end
