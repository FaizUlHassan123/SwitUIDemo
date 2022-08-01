//
//  SceneAdJsToOcManager.h
//  SceneAdSdk
//
//  Created by xmiles on 2019/5/23.
//  Copyright © 2019 gaven. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void(^SceneAdSdkJsToIosManager_Login_Block)(NSDictionary * _Nullable params);
typedef void(^SceneAdSdkJsToIosManager_JumpProtocol_Block)(NSDictionary * _Nullable params);
typedef NSDictionary *_Nullable(^SceneAdSdkJsToIosManager_Get_Phead_Block)(NSDictionary * _Nullable params);
typedef void(^SceneAdSdkJsToIosManager_WebMessage_Block)(NSDictionary * _Nullable params);
typedef NSString *_Nullable(^SceneAdSdkJsToIosManager_GetWithdrawSuccessParams_Block)(NSDictionary *_Nullable);
typedef void(^SceneAdSdkJsToIosManager_GotoSignPage_Block)(void);



#define SceneAdSdk_Login_Chage_Status @"SceneAdSdk_Login_Chage_Status"
#define SceneAdSdk_Logout_Chage_Status @"SceneAdSdk_Logout_Chage_Status"
#define SceneAdSdk_onResume_Change_Status @"SceneAdSdk_onResume_Change_Status"


NS_ASSUME_NONNULL_BEGIN

@interface SceneAdSdkJsToIosManager : NSObject

// 单例
+(SceneAdSdkJsToIosManager *)shareManager;

// js跳客户端登陆回调
@property (nonatomic, copy) SceneAdSdkJsToIosManager_Login_Block loginBlock;
// js主动取客户端phead
@property (nonatomic, copy) SceneAdSdkJsToIosManager_Get_Phead_Block get_Phead_Block;
// 跳转路由协议
@property (nonatomic, copy) SceneAdSdkJsToIosManager_JumpProtocol_Block jumpProtocolBlock;
// 前端传递消息协议
@property (nonatomic, copy) SceneAdSdkJsToIosManager_WebMessage_Block webMessageBlock;
// 获取订单消息
@property (nonatomic, copy) SceneAdSdkJsToIosManager_GetWithdrawSuccessParams_Block getWithdrawSuccessParams;
// 跳转到签到页
@property (nonatomic , copy)SceneAdSdkJsToIosManager_GotoSignPage_Block gotoSignPage;

// 登陆成功调用通知
-(void)updateLoginSuccess;
// 登出成功调用通知
-(void)updateLogoutSuccess;

@end

NS_ASSUME_NONNULL_END
