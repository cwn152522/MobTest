//
//  LoginViewController.m
//  MOBTest
//
//  Created by 伟南 陈 on 2018/3/15.
//  Copyright © 2018年 com.chenweinan. All rights reserved.
//

#import "LoginViewController.h"
#import "MYAutoScaleView.h"

@interface LoginViewController ()<UITableViewDataSource, UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (weak, nonatomic) IBOutlet UIView *topView;

@end

@implementation LoginViewController

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
    [self configTableView];
}
- (void)configNavigationBar{
    self.automaticallyAdjustsScrollViewInsets = YES;
    [self.navigationBar setTitle:self.title leftText:nil rightImage:nil];
    self.navigationBar.backgroundColor = [UIColor clearColor];
}
- (void)configTableView{
    self.tableView.backgroundColor = [UIColor groupTableViewBackgroundColor];
    self.tableView.showsVerticalScrollIndicator = NO;
    self.tableView.tableFooterView = [[UIView alloc] init];
    self.automaticallyAdjustsScrollViewInsets = NO;
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    
    MYAutoScaleView *scale = [[MYAutoScaleView alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 175)];
    [scale setContentView:self.topView scrollview:self.tableView];
    self.tableView.tableHeaderView = scale;
//    [self.view addSubview:scale];
    
//    [self.tableView registerNib:[UINib nibWithNibName:@"ADepartmentSubVCTableViewCell" bundle:nil] forCellReuseIdentifier:kAssociateDepartmentSubVCId];
    
    //    self.tableView.tableHeaderView = self.tableHeaderView;
    
//    self.tableModel = [[ADepartmentSubVCTableModel alloc] initWithCellIdentifier:kAssociateDepartmentSubVCId withHeaderIdentifier:nil configureCellBlock:^(ADepartmentSubVCTableViewCell *tableViewCell, id item, NSIndexPath *indexPath) {
//        //        [tableViewCell loadWithData:item indexPath:indexPath];
//    } withCellClass:nil];
//    
//    self.tableView.dataSource = self.tableModel;
}


#pragma mark - <*********************** 初始化控件/数据 **********************>




#pragma mark - <************************** 代理方法 **************************>
#pragma mark UITableViewDataSource
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 100;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cellid"];
    if(cell == nil){
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cellid"];
    }
    [cell.textLabel setText:[NSString stringWithFormat:@"这是第%ld行", indexPath.row]];
    return cell;
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
