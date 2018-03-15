//
//  ViewController.m
//  MOBTest
//
//  Created by 伟南 陈 on 2018/3/14.
//  Copyright © 2018年 com.chenweinan. All rights reserved.
//

#import "ViewController.h"
#import "LoginViewController.h"

@interface ViewController ()

@end

@implementation ViewController

#pragma mark - <************************** 页面生命周期 **************************>

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 初始化视图
    [self initUI];
    
    // 获取数据
    [self getDataFormServer];
    
}



#pragma mark - <************************** 获取数据 **************************>
// !!!: 获取数据
-(void)getDataFormServer{
    
}


#pragma mark - <************************** 配置视图 **************************>
// !!!: 配置视图
-(void)initUI{
    [self configNavigationBar];
}
- (void)configNavigationBar{
    [self.navigationBar setTitle:self.title leftText:@"跳转" rightImage:nil];
}

#pragma mark - <*********************** 初始化控件/数据 **********************>




#pragma mark - <************************** 代理方法 **************************>
- (void)navigationViewLeftClickEvent{
    LoginViewController *vc = [LoginViewController new];
    [self.navigationController pushViewController:vc animated:YES];
}



#pragma mark - <************************** 点击事件 **************************>




#pragma mark - <************************** 其他方法 **************************>




#pragma mark - <************************** 检测释放 **************************>
- (void)dealloc{
    NSLog(@"%@释放掉",[self class]);
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
