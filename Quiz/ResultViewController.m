//
//  ResultViewController.m
//  Quiz
//
//  Created by ohtatomotaka on 2014/12/04.
//  Copyright (c) 2014年 ohtatomotaka. All rights reserved.
//

#import "ResultViewController.h"

@interface ResultViewController ()

@end

@implementation ResultViewController
@synthesize getAnswerCount = _getAnswerCount;
@synthesize getSumCount = _getSumCount;

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"出題数%d 正解数%d",_getSumCount,_getAnswerCount);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
