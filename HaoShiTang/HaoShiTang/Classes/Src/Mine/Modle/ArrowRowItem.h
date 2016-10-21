//
//  ArrowRowItem.h
//  HaoShiTang
//
//  Created by zhanglu on 16/6/26.
//  Copyright © 2016年 zhanglu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RowItem.h"

@interface ArrowRowItem : RowItem
/**
 *  将要跳转的控制器
 */
@property (nonatomic,assign) Class delClass;

/**
 *  将要执行的代码
 */
@property (nonatomic,copy)  void(^task)(NSIndexPath *indexpath);


@end
