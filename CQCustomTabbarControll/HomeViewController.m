//
//  HomeViewController.m
//  CQCustomTabbarControll
//
//  Created by chenq@kensence.com on 2017/11/20.
//  Copyright © 2017年 chenq@kensence.com. All rights reserved.
//

#import "HomeViewController.h"
#import "CQTabBarController.h"
#import "ViewController.h"

@interface HomeViewController ()<CQTabBarDelegate,UITableViewDelegate,UITableViewDataSource>

@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor redColor];
    self.edgesForExtendedLayout = UIRectEdgeNone;
    CQTABBarController.tabbar.delegate = self;
    self.tabBarItem.badgeColor = [UIColor orangeColor];
    self.tabBarItem.badgeValue = @"7";
    
    UITableView *table = [[UITableView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height) style:UITableViewStylePlain];
    table.delegate = self;
    table.dataSource = self;
    [table registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cell"];
    [self.view addSubview:table];
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 20;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 45;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    cell.textLabel.text = @"飞吧会计法把卡积分把咖啡吧可否把咖啡吧咖啡吧开发播放卡";
    return cell;
}





//中间按钮点击
- (void)tabbar:(CQTabBar *)tabbar clickForCenterButton:(CQCenterButton *)centerButton{
   
    ViewController *Control = [[ViewController alloc]init];
    [self.navigationController presentViewController:Control animated:YES completion:nil];
    
}
//是否允许切换
- (BOOL)tabBar:(CQTabBar *)tabBar willSelectIndex:(NSInteger)index{
    //    NSLog(@"将要切换到---> %ld",index);
    return YES;
}
//通知切换的下标
- (void)tabBar:(CQTabBar *)tabBar didSelectIndex:(NSInteger)index{
    
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
