//
//  registViewController.m
//  HaoShiTang
//
//  Created by zhanglu on 16/6/20.
//  Copyright © 2016年 zhanglu. All rights reserved.
//

#import "registViewController.h"


@interface registViewController ()

@property (weak, nonatomic) IBOutlet UIButton *getCodeBtn;
@property (weak, nonatomic) IBOutlet UITextField *phoneTF;
@property (weak, nonatomic) IBOutlet UITextField *codeTF;
@property (weak, nonatomic) IBOutlet UITextField *pwdTF;
@property (weak, nonatomic) IBOutlet UIButton *netStepBtn;
@property (weak, nonatomic) IBOutlet UIButton *protocalSelBtn;

@end

@implementation registViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 设置按钮状态
    _getCodeBtn.enabled = NO;
    _getCodeBtn.backgroundColor = [UIColor grayColor];
    
    _netStepBtn.enabled = NO;
    _netStepBtn.backgroundColor = [UIColor grayColor];
    
    self.view.backgroundColor = globleVCBagColor;
}

//
- (IBAction)protocalSel:(UIButton *)sender {
    
    sender.selected = !sender.selected;
    [self regViewEditingChanged];
}

- (void)viewWillAppear:(BOOL)animated {
    
    [super viewWillAppear:animated];
    self.navigationController.navigationBar.hidden = NO;
}
- (IBAction)editingChanged:(UITextField *)sender {
    
    if (sender.text.length == 11) {
        
        _getCodeBtn.enabled = YES;
        _getCodeBtn.backgroundColor = [UIColor orangeColor];
    } else {
        _getCodeBtn.enabled = NO;
        _getCodeBtn.backgroundColor = [UIColor grayColor];
    }
    
    [self regViewEditingChanged];
   
    
}
- (IBAction)codeEditng:(UITextField *)sender {
   
    [self regViewEditingChanged];
}
- (IBAction)pwdEditingChanged:(UITextField *)sender {
    
    [self regViewEditingChanged];
}

- (void)regViewEditingChanged {
    
    _netStepBtn.enabled = (_phoneTF.text.length == 11) && _codeTF.text.length && (_pwdTF.text.length >= 6) && _protocalSelBtn.selected;
    
    _netStepBtn.backgroundColor = (_phoneTF.text.length == 11) && _codeTF.text.length && (_pwdTF.text.length >= 6) && _protocalSelBtn.selected ? [UIColor orangeColor] : [UIColor grayColor];
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
