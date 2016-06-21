//
//  AppDelegate.m
//  HaoShiTang
//
//  Created by zhanglu on 16/6/18.
//  Copyright © 2016年 zhanglu. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
     _window = [[UIWindow alloc]init];
    
    // 判断是否是已登陆状态，如果否则跳转到登陆页，如果是则跳转到首页
    
    if (![self isLogined]) {
        
        // window的跟控制器设置为登陆页
        UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"login" bundle:[NSBundle mainBundle]];
        UINavigationController *loginVC = [storyboard instantiateInitialViewController];
        NSLog(@"%@",[loginVC class]);
        
        _window.rootViewController = loginVC;
        
        ZLLog(@"shiyixia");
    } else {
        
         // window的跟控制器设置首页
        UIViewController *vc = [[UIViewController alloc]init];
        vc.view.frame = [UIScreen mainScreen].bounds;
        vc.view.backgroundColor = [UIColor redColor];
        
        _window.rootViewController = vc;
        
        }
    
      [_window makeKeyAndVisible];
    
    return YES;
}

-(BOOL)isLogined {
    
    
    return [[NSUserDefaults standardUserDefaults]objectForKey:@"uid"];
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
