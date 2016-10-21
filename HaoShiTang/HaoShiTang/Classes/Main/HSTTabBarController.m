//
//  HSTTabBarController.m
//  HaoShiTang
//
//  Created by zhanglu on 16/6/24.
//  Copyright © 2016年 zhanglu. All rights reserved.
//

#import "HSTTabBarController.h"
#import "HSTHomePageViewController.h"
#import "HSTNutrFoodViewController.h"
#import "HSTNutrRecordViewController.h"
#import "HSTNtrQuestrionViewController.h"
#import "ParentsFiledViewController.h"
#import "HSTNavController.h"

@interface HSTTabBarController ()

@end

@implementation HSTTabBarController

+ (void)load
{
    // 获取全局的tabBarItem
    UITabBarItem *item = [UITabBarItem appearanceWhenContainedIn:self, nil];
    
    // 设置选中状态下tabBarButton
    NSMutableDictionary *attr = [NSMutableDictionary dictionary];
    // 颜色
    attr[NSForegroundColorAttributeName] = [UIColor orangeColor];
    // 设置选中状态的tabBarButton
    [item setTitleTextAttributes:attr forState:UIControlStateSelected];
    
    // 设置正常状态下tabBarButton
//    NSMutableDictionary *attrNor = [NSMutableDictionary dictionary];
//    // 字体:设置tabBar上按钮字体，只能通过正常状态下
//    attrNor[NSFontAttributeName] = [UIFont systemFontOfSize:13];
//    // 设置选中状态的tabBarButton
//    [item setTitleTextAttributes:attrNor forState:UIControlStateNormal];
    
    // 0.appearance：只有遵守UIAppearance协议，就能使用appearance方法
    // 1.所有的控件都能获取到全局
    // 2.通过appearance获取全局对象，可以设置哪些属性（只要有UI_APPEARANCE_SELECTOR宏修饰的属性就可以设置），并不是所有属性都能设置。
    // 3.为什么通常要在Load方法中使用appearance,appearance必须要在显示之前去设置
}


- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 添加子控制器
    [self setupChildViewController];
    
    // 设置tabbarBtn
    [self setAllTabBarBtn];
}

/**
 *  添加所有的控制器
 */
- (void)setupChildViewController {
    
    // 首页
    HSTHomePageViewController *homePage = [[HSTHomePageViewController alloc]init];
    HSTNavController *nav0 = [[HSTNavController alloc]initWithRootViewController:homePage];
    [self addChildViewController:nav0];
    
    // 营养餐
    HSTNutrFoodViewController *nutrFood = [[HSTNutrFoodViewController alloc]init];
    HSTNavController *nav1 = [[HSTNavController alloc]initWithRootViewController:nutrFood];
    [self addChildViewController:nav1];

    // 营养档案
    HSTNutrRecordViewController *nutrRecord = [[HSTNutrRecordViewController alloc]init];
    HSTNavController *nav2 = [[HSTNavController alloc]initWithRootViewController:nutrRecord];
    [self addChildViewController:nav2];

    // 营养问答
    HSTNtrQuestrionViewController *nutrQuestion = [[HSTNtrQuestrionViewController alloc]init];
    HSTNavController *nav3 = [[HSTNavController alloc]initWithRootViewController:nutrQuestion];
    [self addChildViewController:nav3];

    // 家长圈
    ParentsFiledViewController *parentsField = [[ParentsFiledViewController alloc]init];
    HSTNavController *nav4 = [[HSTNavController alloc]initWithRootViewController:parentsField];
    [self addChildViewController:nav4];

    
    
}

- (void)setAllTabBarBtn {

    // 获取第0个子控制器
    // 首页
    
    HSTNavController *nav0 = self.childViewControllers[0];
    nav0.tabBarItem.title = @"首页";
    nav0.tabBarItem.image = [UIImage imageNamed:@"首页"];
//    nav0.tabBarItem.selectedImage = [UIImage imageNamed:@"首页"];
    nav0.tabBarItem.selectedImage = [UIImage imageWithOriginalImageName:@"首页"];
    
    // 营养餐
    HSTNavController *nav1 = self.childViewControllers[1];
    nav1.tabBarItem.title = @"营养餐";
    nav1.tabBarItem.image = [UIImage imageNamed:@"营养餐"];
    nav1.tabBarItem.selectedImage = [UIImage imageWithOriginalImageName:@"营养餐点击态"];
    
 
    // 营养档案
    HSTNavController *nav2 = self.childViewControllers[2];
    nav2.tabBarItem.title = @"营养档案";
    nav2.tabBarItem.image = [UIImage imageNamed:@"营养档案"];
    nav2.tabBarItem.selectedImage = [UIImage imageWithOriginalImageName:@"营养档案点击态"];
    
    // 营养问答
    HSTNavController *nav3 = self.childViewControllers[3];
    nav3.tabBarItem.title = @"营养问答";
    nav3.tabBarItem.image = [UIImage imageNamed:@"营养问答点击态"];
 
    nav3.tabBarItem.selectedImage = [UIImage imageWithOriginalImageName:@"营养问答点击态"];
    
    // 家长圈
    HSTNavController *nav4 = self.childViewControllers[4];
    nav4.tabBarItem.title = @"家长圈";
    nav4.tabBarItem.image = [UIImage imageNamed:@"家长圈"];
    nav4.tabBarItem.selectedImage = [UIImage imageWithOriginalImageName:@"家长圈点击态"];
}

@end
