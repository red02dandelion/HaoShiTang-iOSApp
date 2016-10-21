//
//  RowCellTableViewCell.h
//  HaoShiTang
//
//  Created by zhanglu on 16/6/26.
//  Copyright © 2016年 zhanglu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RowItem.h"
@interface RowCellTableViewCell : UITableViewCell

/**
 *  行模型
 */
@property (nonatomic,strong)  RowItem *rowItem;

+(instancetype)cellWthTableView:(UITableView *)tableView reuseIdentifiler:(NSString *)ID;

@end
