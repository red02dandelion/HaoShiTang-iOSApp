//
//  loginNav.m
//  HaoShiTang
//
//  Created by zhanglu on 16/6/19.
//  Copyright © 2016年 zhanglu. All rights reserved.
//

#import "loginNav.h"

@interface loginNav ()

@end

@implementation loginNav

- (void)viewDidLoad {
    
    [super viewDidLoad];
   
}

+ (void)load {
    
    // 获取整个类的apperence bar对象
    UINavigationBar *bar = [UINavigationBar appearanceWhenContainedIn:self, nil];
    [bar setBackgroundImage:[UIImage imageNamed:@"标题栏"] forBarMetrics:UIBarMetricsDefault];
    
    // 富文本
    NSMutableDictionary *attr = [NSMutableDictionary dictionary];
    attr[NSFontAttributeName] = [UIFont systemFontOfSize:17];
    attr[NSForegroundColorAttributeName] = [UIColor whiteColor];
    [bar setTitleTextAttributes:attr];
    
    
}

- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated {
    [super pushViewController:viewController animated:animated];
    // 不是跟控制器
    if (self.childViewControllers.count) {
        
//        viewController.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc]initWithCustomView:(UIView *)[UIImage imageNamed:@"标题返回键"]];
        UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
        [backButton setImage:[UIImage imageNamed:@"标题返回键"] forState:UIControlStateNormal];
        [backButton sizeToFit];
        
        [backButton addTarget:self action:@selector(back) forControlEvents:UIControlEventTouchUpInside];
        viewController.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc]initWithCustomView:backButton];
    }
}

- (void)back {
    
    [self popViewControllerAnimated:YES];
}
- (UIStatusBarStyle)preferredStatusBarStyle {

    return UIStatusBarStyleLightContent;
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
