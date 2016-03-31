//
//  AppDelegate.m
//  DragonVideo
//
//  Created by MJ on 16/3/30.
//  Copyright © 2016年 MJ. All rights reserved.
//

#import "AppDelegate.h"

#import "MJ_DragonEyeViewController.h"
#import "MJ_DragonFoodViewController.h"
#import "MJ_DragonMYViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    [self.window makeKeyAndVisible];
    
    
    
    MJ_DragonEyeViewController *eyeVC = [[MJ_DragonEyeViewController alloc] init];
    UINavigationController *eyeNavi = [[UINavigationController alloc] initWithRootViewController:eyeVC];
    eyeNavi.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"目观" image:[[UIImage imageNamed:@"muguan1"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] selectedImage:[UIImage imageNamed:@"muguan2"]];
    
    
    MJ_DragonFoodViewController *foodVC = [[MJ_DragonFoodViewController alloc] init];
    UINavigationController *foodNavi = [[UINavigationController alloc] initWithRootViewController:foodVC];
    foodNavi.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"日食" image:[[UIImage imageNamed:@"rishi1"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] selectedImage:[UIImage imageNamed:@"rishi2"]];
    
    
    UITabBarController *tabBar = [[UITabBarController alloc] init];
    
    tabBar.viewControllers = @[eyeNavi, foodNavi];
    
    
    
    
    self.window.rootViewController = tabBar;
    
    
    
    
    
    
    
    
    
    
    
    // Override point for customization after application launch.
    return YES;
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
    // Saves changes in the application's managed object context before the application terminates.
   
}


@end
