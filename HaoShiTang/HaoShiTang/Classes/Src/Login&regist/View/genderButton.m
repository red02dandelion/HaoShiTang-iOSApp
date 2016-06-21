//
//  genderButton.m
//  HaoShiTang
//
//  Created by zhanglu on 16/6/21.
//  Copyright © 2016年 zhanglu. All rights reserved.
//

#import "genderButton.h"

@implementation genderButton

- (void)layoutSubviews {
    
    [super layoutSubviews];
    
    CGFloat margin = 10;
    
    self.titleLabel.x= margin;
    self.imageView.x = self.width - self.imageView.width - margin;
    
}

@end
