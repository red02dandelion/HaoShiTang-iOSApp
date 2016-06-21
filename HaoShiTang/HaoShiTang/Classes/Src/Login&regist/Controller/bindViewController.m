//
//  bindViewController.m
//  HaoShiTang
//
//  Created by zhanglu on 16/6/21.
//  Copyright © 2016年 zhanglu. All rights reserved.
//
#import "DateFiled.h"
#import "bindViewController.h"
#import "genderPickViewController.h"


@interface bindViewController ()<UITextFieldDelegate>

// 真实姓名
@property (weak, nonatomic) IBOutlet UITextField *realName;

// 性别
@property (weak, nonatomic) IBOutlet UITextField *genderPick;
@property (weak, nonatomic) IBOutlet UIView *genderView;

// 出生日期
@property (weak, nonatomic) IBOutlet DateFiled *bithday;


@end

@implementation bindViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _genderPick.delegate = self;
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(jumpToGenderPciker)];
    [self.genderView addGestureRecognizer:tap];
//    [self.genderPick addGestureRecognizer:tap];
    [_genderPick addTarget:self action:@selector(jumpToGenderPciker) forControlEvents:UIControlEventTouchUpInside];

   }


- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField {
    return NO;
    
}

/**
 *  准备跳转
 *
 *  @param segue  <#segue description#>
 *  @param sender <#sender description#>
 */
- (IBAction)nextStep:(UIButton *)sender {
    
    // 本地验证
    if (_realName.text.length == 0) {
        
        return ;
    }
    
    if (_genderPick.text.length == 0) {
       
        return ;
    }
    if (_bithday.text.length == 0) {
        
        return ;
    }
    
    // 发送请求
    
    // 跳转到确认信息
    
    [self performSegueWithIdentifier:@"confirmInfo" sender:self];
    
}
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    if ([segue.destinationViewController isKindOfClass:[genderPickViewController class]]) {
        
        genderPickViewController *viewController = (genderPickViewController *)segue.destinationViewController;
        
        viewController.genderCallBack = ^(NSString *gender) {
            
            self.genderPick.text = gender;
        };
        
    }
    
}

- (void)jumpToGenderPciker {
    
    [self performSegueWithIdentifier:@"genderPicker" sender:self];
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
