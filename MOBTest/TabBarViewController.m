//
//  TabBarViewController.m
//  MOBTest
//
//  Created by 伟南 陈 on 2018/3/14.
//  Copyright © 2018年 com.chenweinan. All rights reserved.
//

#import "TabBarViewController.h"
#import "ViewController.h"
#import "LoginViewController.h"

@interface TabBarViewController ()

@end

@implementation TabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSDictionary *vc1 = @{
                         @"vc": NSStringFromClass([LoginViewController class]),
                         @"title" : @"登录",
                         @"color":[UIColor groupTableViewBackgroundColor]
                         };
    NSDictionary *vc2 = @{
                         @"vc": NSStringFromClass([ViewController class]),
                         @"title" : @"分享",
                         @"color":[UIColor groupTableViewBackgroundColor]
                         };
    NSDictionary *vc3 = @{
                         @"vc": NSStringFromClass([ViewController class]),
                         @"title" : @"聊天",
                         @"color":[UIColor groupTableViewBackgroundColor]
                         };
    NSDictionary *vc4 = @{
                         @"vc": NSStringFromClass([ViewController class]),
                         @"title" : @"统计",
                         @"color":[UIColor groupTableViewBackgroundColor]
                         };
    NSArray *vcs = @[vc1, vc2, vc3, vc4];
    
    [self initWithViewControllers:vcs];
    // Do any additional setup after loading the view from its nib.
}

- (void)initWithViewControllers:(NSArray *)vcs{
    NSMutableArray *navs = [NSMutableArray array];
    for (NSDictionary *vc in vcs) {
        NSString *title = vc[@"title"];
        Class class = NSClassFromString(vc[@"vc"]);
        UINavigationController *nav = [UINavigationController new];
        nav.navigationBarHidden = YES;
        nav.tabBarItem.title = title;
        UIViewController *vc1 = [class new];
        vc1.title = title;
        vc1.view.backgroundColor = vc[@"color"];
        nav.viewControllers = @[vc1];
        [navs addObject:nav];
    }
    [self setViewControllers:navs];
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
