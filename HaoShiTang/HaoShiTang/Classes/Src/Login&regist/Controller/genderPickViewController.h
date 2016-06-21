//
//  genderPickViewController.h
//  HaoShiTang
//
//  Created by zhanglu on 16/6/21.
//  Copyright © 2016年 zhanglu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface genderPickViewController : UIViewController
@property (nonatomic,copy)  void(^genderCallBack)(NSString *gender);
@end
