//
//  SkyLinePayMent.h
//  sigleAPP
//
//  Created by skyline on 2017/11/9.
//  Copyright © 2017年 skyline. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SkyLineProduct : NSObject
@property (nonatomic, copy, readonly) NSString *appID;//appID
@property (nonatomic, copy, readonly) NSString *accountID;//账号ID
@property (nonatomic, copy, readonly) NSString *currency;//货币
@property (nonatomic, copy, readonly) NSString *terminal;//设备平台

@property (nonatomic, copy) NSString *roleID;//角色ID
@property (nonatomic, copy) NSString *orderID;//订单ID
@property (nonatomic, copy) NSString *orderInfo;//订单信息
@property (nonatomic, copy) NSString *goodsID;//商品ID
@property (nonatomic, copy) NSString *goodsTitle;//商品标题(商品名称)
@property (nonatomic, copy) NSString *goodsDescription;//商品描述(信息)
@property (nonatomic, copy) NSString *goodsPrice;//价格
@property (nonatomic, copy) NSString *payChannel;//支付方式
@property (nonatomic, copy) NSString *notifyURL;//回调地址
@property (nonatomic, copy) NSString *serverID;//服务ID
@property (nonatomic, copy) NSString *serverName;//服务器名称
@property (nonatomic, copy) NSString *payID;
@end

