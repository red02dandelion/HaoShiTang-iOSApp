//
//  RowItem.h
//  HaoShiTang
//
//  Created by zhanglu on 16/6/26.
//  Copyright © 2016年 zhanglu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface RowItem : NSObject
/**
 *  图片
 */
@property (nonatomic,strong) UIImage *image;

/**
 *  标题
 */
@property (nonatomic,strong) NSString *title;

/**
 *  detail
 */
@property (nonatomic,strong) NSString *detailText;


@end
