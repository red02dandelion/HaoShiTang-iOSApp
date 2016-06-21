//
//  loginView.m
//  HaoShiTang
//
//  Created by zhanglu on 16/6/20.
//  Copyright © 2016年 zhanglu. All rights reserved.
//

#import "loginView.h"
@interface loginView ()

// 手机号
@property (weak, nonatomic) IBOutlet UITextField *phoneNum;
// 密码
@property (weak, nonatomic) IBOutlet UITextField *pwdText;
// 登录
@property (weak, nonatomic) IBOutlet UIButton *loginBtn;



@end
@implementation loginView

- (IBAction)edidChange:(id)sender {
    
    [self textChanged];
    
}
- (IBAction)pwdEditintChanged:(id)sender {
    
    [self textChanged];
}

- (void)textChanged {
    
    self.loginBtn.enabled = self.phoneNum.text.length && self.pwdText.text.length;
}

+(instancetype)loginViewFrameNIB {
    
    return [[[NSBundle mainBundle]loadNibNamed:NSStringFromClass(self) owner:nil options:nil]firstObject];
}


- (void)awakeFromNib {
    
    self.autoresizingMask = NO;
    self.loginBtn.enabled = NO;
}
- (IBAction)forgetPwd:(id)sender {
    
    self.myblock(@"forgetPwd");
}

//-(void)layoutSubviews {
//   
//    [super layoutSubviews];
//    
//    self.layer.borderWidth = 1;
//    self.layer.borderColor = [[UIColor whiteColor]CGColor];
//    
//    UIView *aboveView = [[UIView alloc]initWithFrame:CGRectMake(10, 10, self.frame.size.width - 20,55)];
//    [aboveView.layer setBorderColor:[[UIColor whiteColor]CGColor]];
//    [aboveView.layer setBorderWidth:1];
//    [aboveView.layer setCornerRadius:5];
//    
//    
//    UIView *belowView = [[UIView alloc]initWithFrame:CGRectMake(10, 20 + 55, self.frame.size.width - 20,55)];
//    [belowView.layer setBorderColor:[[UIColor whiteColor]CGColor]];
//    [belowView.layer setBorderWidth:1];
//    [belowView.layer setCornerRadius:5];
//    
//    [self addSubview:aboveView];
//    [self addSubview:belowView];
//    
//    
//
//}
//- (void)drawRect:(CGRect)rect {
//    
//     [super drawRect:rect];
//    
//   
//   
//   }

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.

*/

@end
