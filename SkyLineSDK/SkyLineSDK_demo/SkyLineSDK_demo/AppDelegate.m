//
//  AppDelegate.m
//  SkyLineSDK_demo
//
//  Created by skyline on 2017/12/11.
//  Copyright © 2017年 skyline. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"
#import <SkyLineSDK/SkyLineSDK.h>

#define APP_ID @"150650558833901"
//SDK接口地址（固定值）
#define SERVER_HEADER @"http://120.25.192.67/skylinesdkserver/api"
//SDK公钥 （固定值）
#define PUBLIC_KEY @"MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCeFgpxWK0Qj1JCIH/Fy0ZvLwTLfLe0vpKtRQ+uk2T7GuclkAZ7pJwYoztYJPSL4LmQYLFRWDewmjBWFrwYIXtOgqgM9W/SH4cFfLZbeEoYe/IcrJc/EP7iNCtDGDQN1mxv6dU+UTm48h74Cc013dlyriWssFowJUeFAc/9Kf/ILwIDAQAB"
@interface AppDelegate ()


@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    [SkyLineManager registerSkyLineManager:APP_ID
                             serviceHeader:SERVER_HEADER
                                 publicKey:PUBLIC_KEY];
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor whiteColor];
    self.window.rootViewController = [[ViewController alloc]init];
    [self.window makeKeyAndVisible];
    // Override point for customization after application launch.
    // Override point for customization after application launch.
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
