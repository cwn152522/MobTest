//
//  TabBarViewController.m
//  MOBTest
//
//  Created by 伟南 陈 on 2018/3/14.
//  Copyright © 2018年 com.chenweinan. All rights reserved.
//

#import "TabBarViewController.h"
#import "ViewController.h"

@interface TabBarViewController ()

@end

@implementation TabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    ViewController *v1 = [ViewController new];
    v1.tabBarItem.title = @"登录";
    ViewController *v2 = [ViewController new];
    v2.tabBarItem.title = @"分享";
    ViewController *v3 = [ViewController new];
    v3.tabBarItem.title = @"聊天";
    ViewController *v4 = [ViewController new];
    v4.tabBarItem.title = @"统计";
    [self setViewControllers :@[v1, v2, v3, v4]];
    // Do any additional setup after loading the view from its nib.
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
