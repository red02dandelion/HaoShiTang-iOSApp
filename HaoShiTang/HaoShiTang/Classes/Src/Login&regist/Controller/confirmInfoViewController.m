//
//  confirmInfoViewController.m
//  HaoShiTang
//
//  Created by zhanglu on 16/6/21.
//  Copyright © 2016年 zhanglu. All rights reserved.
//

#import "confirmInfoViewController.h"

@interface confirmInfoViewController ()

@end

@implementation confirmInfoViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    self.view.backgroundColor = globleVCBagColor;
}

- (IBAction)reType:(id)sender {
    
    [self.navigationController popViewControllerAnimated:YES];
}


- (IBAction)regSucess:(id)sender {
    
    
    // 显示注册成功
    
    // 返回登录界面
    [self.navigationController popToRootViewControllerAnimated:YES];
}

@end
