//
//  SceneAdSdkStatisticsTool.h
//  SceneAdSdk
//
//  Created by xmiles on 2021/2/2.
//  Copyright © 2021 dengsir. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface SceneAdSdkStatisticsTool : NSObject

/// 启动埋点
/// *注：初始化时候，当SceneAdSdkParams的enableInnerTrack为true时会在SceneAdSdkManager setupSDK:complete:自动调用，如果初始化为false的时候，可自行在合适时间自己调用。
+ (void)sceneAdTrackAppStart;

/// 上报事件
/// @param eventName 事件名称
/// @param datas 埋点数据
+ (void)sceneAdSdkStatisticsWithName:(NSString *)eventName values:(NSDictionary *)datas;

/// 上报事件
/// @param eventName 事件名称
/// @param datas 埋点数据
/// @param success 成功回调
/// @param failure 失败回调
+ (void)sceneAdSdkStatisticsWithName:(NSString *)eventName values:(NSDictionary *)datas success:(void (^)(void))success errorCallback:(void (^)(NSError *error))failure;

/// 上报用户属性
/// @param profile 用户属性数据
/// @param success 成功回调
/// @param failure 失败回调
+ (void)sceneAdSdkUserProfile:(NSDictionary *)profile success:(void (^)(void))success errorCallback:(void (^)(NSError *error))failure;

+ (void)doSALaunchStatisticsWithSaPage:(NSString *)saPage from:(NSString *)fromPage;

+ (void)doSAHideStatisticsWithSaPage:(NSString *)saPage;

@end

NS_ASSUME_NONNULL_END
