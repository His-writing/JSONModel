//
//  ViewController.m
//  JSONModel
//
//  Created by shuzhenguo on 14-8-19.
//  Copyright (c) 2014年 shuzhenguo. All rights reserved.
//

#import "ViewController.h"
#import "Test.h"
#import "Noti.h"
@interface ViewController ()
{
    Noti *_noti;
}

- (IBAction)btnClicked:(id)sender;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	Test *t1 = [[Test alloc] init];
    t1.name = @"family";
    t1.age = @"30";
    NSLog(@"%@",[t1 toJSONString]);
    
    NSString *jsonStr = @"{\"age\":\"130\",\"name\":\"aaaaaa\"}";
    
    Test *ttt = [[Test alloc] initWithString:jsonStr error:nil];
    
    NSLog(@"dict:%@",[ttt toDictionary]);
    
    _noti = [[Noti alloc] init];
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnClicked:(id)sender {
    [[NSNotificationCenter defaultCenter] postNotificationName:NotiName object:nil];
}
@end
