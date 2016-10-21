//
//  HSTNavController.m
//  HaoShiTang
//
//  Created by zhanglu on 16/6/24.
//  Copyright © 2016年 zhanglu. All rights reserved.
//

#import "HSTNavController.h"

@interface HSTNavController ()

@end

@implementation HSTNavController

// 设置navgation背景图以及字体的外观
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

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
}



@end
