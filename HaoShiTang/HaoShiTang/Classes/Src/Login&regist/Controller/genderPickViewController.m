//
//  genderPickViewController.m
//  HaoShiTang
//
//  Created by zhanglu on 16/6/21.
//  Copyright © 2016年 zhanglu. All rights reserved.
//

#import "genderPickViewController.h"

@interface genderPickViewController ()

@end

@implementation genderPickViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = globleVCBagColor;
    
}
- (IBAction)picvMale:(UIButton *)sender {
    
    self.genderCallBack(sender.titleLabel.text);
    [self.navigationController popViewControllerAnimated:YES];
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
