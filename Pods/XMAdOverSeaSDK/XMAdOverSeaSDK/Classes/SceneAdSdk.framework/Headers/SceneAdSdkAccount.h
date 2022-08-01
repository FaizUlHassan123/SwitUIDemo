//
//  SceneAdSdkAccount.h
//  SceneAdSdk
//
//  Created by xmiles on 2021/1/11.
//  Copyright © 2021 dengsir. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SceneAdSdkAcountModel.h"
#import "SceneAdSdkCreditsModel.h"
#import "SceneAdSdkCreditParams.h"

NS_ASSUME_NONNULL_BEGIN

@interface SceneAdSdkAccount : NSObject

/// 登录用户信息
@property (nonatomic, strong, readonly) NSDictionary *userInfo;

+ (SceneAdSdkAccount *)shareManager;

/// 登陆账号服务
/// @param success 成功回调
/// @param failure 失败回调
- (void)sceneAd_accountLoginSuccess:(nullable void (^)(NSDictionary *_Nullable responseObject))success failure:(nullable void (^)(NSError *error))failure;

#pragma mark 新积分和提现系统2.0

/// 查询用户积分
/// @param sysCode 积分系统编码
/// @param success 积分信息模型
/// @param failure 失败返回
+ (void)sceneAd_getUserCoinInfoSysCode:(NSString *_Nonnull)sysCode success:(void (^)(SceneAdSdkCoinModel *))success errorCallback:(void (^)(NSError *))failure;

/// 获取积分系统配置
/// @param sysCode 积分系统编码
/// @param success 积分系统配置模型
/// @param failure 失败返回
+ (void)sceneAd_getCoinConfigSysCode:(NSString *_Nonnull)sysCode success:(void (^)(SceneAdSdkCoinConfig *))success errorCallback:(void (^)(NSError *))failure;

/// 获取添加积分数值
/// @param sysCode 积分系统编码
/// @param coinCode 积分业务编码
/// @param success 积分数值
/// @param failure 失败返回
+ (void)sceneAd_generateCoinSysCode:(NSString *_Nonnull)sysCode coinCode:(NSInteger)coinCode success:(void (^)(NSDictionary *))success errorCallback:(void (^)(NSError *))failure;

/// 增加用户积分
/// @param params 接口所需参数
/// @param success 积分信息模型
/// @param failure 失败返回
+ (void)sceneAd_newUserAddCoinCreditParams:(SceneAdSdkCreditParams *)params success:(void (^)(SceneAdSdkCreditsModel *))success errorCallback:(void (^)(NSError *))failure;

/// 减少用户积分
/// @param params 接口所需参数
/// @param success 积分信息模型
/// @param failure 失败返回
+ (void)sceneAd_newUserSubtractCoinCreditParams:(SceneAdSdkCreditParams*)params success:(void (^)(SceneAdSdkCreditsModel *))success errorCallback:(void (^)(NSError *))failure;

/// 获取新积分系统配置列表
/// @param success 配置列表信息
/// @param failure 失败返回
+ (void)sceneAd_getCoinConfigListSuccess:(void (^)(NSArray<SceneAdSdkCoinConfig*> *))success errorCallback:(void (^)(NSError *))failure;


@end

NS_ASSUME_NONNULL_END
