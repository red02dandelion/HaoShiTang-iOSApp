//
//  RowCellTableViewCell.m
//  HaoShiTang
//
//  Created by zhanglu on 16/6/26.
//  Copyright © 2016年 zhanglu. All rights reserved.
//

#import "RowCellTableViewCell.h"
#import "ArrowRowItem.h"

@implementation RowCellTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];

}

- (void)setRowItem:(RowItem *)rowItem {
    
    _rowItem = rowItem;
    
    // 设置数据
    [self setUpDataWithRowItem:rowItem];
    
    // 设置辅助视图
    [self setUpAccessoryView:rowItem];
   
}

-(void) setUpAccessoryView:(RowItem *)rowItem {
    
    if ([rowItem isKindOfClass:[ArrowRowItem class]]) {
        
        UIImageView *ArrowImage = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"正文箭头"]];
        self.accessoryView = ArrowImage;
    }
    
}

-(void) setUpDataWithRowItem:(RowItem *)rowItem {

    
    self.imageView.image = rowItem.image;
    self.textLabel.text = rowItem.title;
    
    self.detailTextLabel.text = rowItem.detailText;
}

+ (instancetype)cellWthTableView:(UITableView *)tableView reuseIdentifiler:(NSString *)ID {
    
    RowCellTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    
    return cell;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
