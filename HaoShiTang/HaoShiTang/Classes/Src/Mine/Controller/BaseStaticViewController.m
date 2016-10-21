//
//  BaseStaticViewController.m
//  HaoShiTang
//
//  Created by zhanglu on 16/6/26.
//  Copyright © 2016年 zhanglu. All rights reserved.
//

#import "BaseStaticViewController.h"
#import "GroupItem.h"
#import "RowItem.h"
#import "RowCellTableViewCell.h"
#import "ArrowRowItem.h"

@interface BaseStaticViewController ()

// 组模型
@property (nonatomic,strong) NSMutableArray *groupItems;

@end

@implementation BaseStaticViewController

/**
 *  组模型数组懒加载
 *
 *  @return <#return value description#>
 */
- (NSMutableArray *)groupItems {
    
    if (_groupItems == nil) {
        
        _groupItems = [NSMutableArray array];
        
    }
    
    return _groupItems;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    
}


#pragma mark -------------------
#pragma mark  UITableViewDataSource

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
   
    return self.groupItems.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    GroupItem *gropItem = self.groupItems[section];
    
    return  gropItem.RowItems.count;
}


static NSString *ID = @"rowCell";
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    RowCellTableViewCell *cell = [RowCellTableViewCell cellWthTableView:tableView reuseIdentifiler:ID];
    
    GroupItem *groupItem = self.groupItems[indexPath.section];
    RowItem *rowItem = groupItem.RowItems[indexPath.row];
    cell.rowItem = rowItem;
    
    return cell;
}


#pragma mark -------------------
#pragma mark UITableViewDelegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    GroupItem *groupItem = self.groupItems[indexPath.section];
    RowItem *rowItem = groupItem.RowItems[indexPath.row];
    
    if ([rowItem isKindOfClass:[ArrowRowItem class]]) {
        
        ArrowRowItem *arrowItem = (ArrowRowItem *)rowItem;
        
        if (arrowItem.delClass) {
            
            UITableViewController *deViewController = [[arrowItem.delClass alloc]init];
            //创建控制器,跳转到指定的控制器.
          
            [self.navigationController pushViewController:deViewController animated:YES];
        }
        // 有没有要执行的任务
        if (arrowItem.task) {
            
            arrowItem.task(indexPath);
            
            return;
        }
        
    }
 }

// Override to support conditional editing of the table view.
//- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
//    // Return NO if you do not want the specified item to be editable.
//    return YES;
//}

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
