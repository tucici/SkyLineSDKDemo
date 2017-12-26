//
//  SkyLinePayment.h
//  SkyLineSDK
//
//  Created by skyline on 2017/11/8.
//  Copyright © 2017年 skyline. All rights reserved.
//

#import <Foundation/Foundation.h>
@class SkyLineProduct;
@protocol SkyLineManagerDelegate<NSObject>
/**
 *@pragma 登录注册回调支付回调(支付回调callback==nil)
 */
- (void)receiveCallBack:(NSDictionary *)callback;
@end
@interface SkyLineManager : NSObject
@property (nonatomic, copy, readonly) NSString *accountID;//账号
@property (nonatomic, copy, readonly) NSString *account;//用户名
@property (nonatomic, copy, readonly) NSString *token;//token
@property (nonatomic, copy, readonly) NSString *appID;//
@property (nonatomic, copy, readonly) NSString *serviceHeader;//
@property (nonatomic, copy, readonly) NSString *publicKey;//

/*
 code == 0  网络延迟，
 code == 100 初始化成功
 code == 104 应用初始化错误
 code == 105 应用不存在
 */
@property (nonatomic, assign, readonly) int statusCode;
@property (nonatomic, weak) id<SkyLineManagerDelegate>delegate;
+ (instancetype)shareManager;

/**
 *@ pragma 注册支付(在application:didFinishLaunchingWithOptions:中注册)
 */
+ (void)registerSkyLineManager:(NSString *)appID serviceHeader:(NSString *)serviceHeader publicKey:(NSString *)key;
/**
 *@ pragma 登陆
 */
+ (void)prepareLogin;
/**
 *@ pragma 注册
 */
+ (void)prepareRegister;
/**
 *@ pragma 支付
 */
+ (void)preparePay:(SkyLineProduct *)product;
@end

