//
//  forgetPwd.m
//  HaoShiTang
//
//  Created by zhanglu on 16/6/19.
//  Copyright © 2016年 zhanglu. All rights reserved.
//

#import "forgetPwd.h"

@interface forgetPwd ()

@end

@implementation forgetPwd

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = globleVCBagColor;
}

//- (void)awakeFromNib {
//    
//    UIView *view = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 100, 200)];
//    view.backgroundColor = [UIColor grayColor];
//    view.layer.borderColor = [[UIColor whiteColor]CGColor];
//    view.layer.borderWidth = 2.0;
//}

//- (void)viewDidLayoutSubviews{
//    [super viewDidLayoutSubviews];
//    UIView *view = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 100, 200)];
//    view.backgroundColor = [UIColor grayColor];
//    view.layer.borderColor = (__bridge CGColorRef _Nullable)([UIColor whiteColor]);
//    view.layer.borderWidth = 2.0;
//}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    self.navigationController.navigationBar.hidden = NO;
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
