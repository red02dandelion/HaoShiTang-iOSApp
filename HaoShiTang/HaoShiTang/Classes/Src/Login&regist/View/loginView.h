//
//  loginView.h
//  HaoShiTang
//
//  Created by zhanglu on 16/6/20.
//  Copyright © 2016年 zhanglu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface loginView : UIView

// 忘记密码点击时执行的block
@property (nonatomic,copy)  void(^myblock)(NSString *segueIdentifier);

+(instancetype)loginViewFrameNIB;
@end
