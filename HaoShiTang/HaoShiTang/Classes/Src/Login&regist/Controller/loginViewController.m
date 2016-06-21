//
//  loginViewController.m
//  HaoShiTang
//
//  Created by zhanglu on 16/6/19.
//  Copyright © 2016年 zhanglu. All rights reserved.
//

#import "loginViewController.h"
#import "loginView.h"
@interface loginViewController ()

@property (weak, nonatomic) IBOutlet UIView *middleView;

@end

@implementation loginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    loginView *loginngView = [loginView loginViewFrameNIB];
    
    loginngView.myblock = ^(NSString *identifier){
        [self performSegueWithIdentifier:identifier sender:self];
    };
    
    [_middleView addSubview:loginngView];
    

}

- (void)viewWillAppear:(BOOL)animated {
    
    [super viewWillAppear:animated];
    self.navigationController.navigationBar.hidden = YES;
}

- (void)viewDidLayoutSubviews {
    
    [super viewDidLayoutSubviews];
    
    // 设置登录页的frame
    loginView *loginView = _middleView.subviews[0];
    loginView.frame = _middleView.bounds;
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
