//
//  SceneAdManager.h
//  SceneAdSDKDemo
//
//  Created by xmiles on 2019/5/15.
//  Copyright © 2019 gaven. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <SceneAdSdk/SceneAdSdkParams.h>

/// SDK初始化回调
/// @param isSucceed 是否初始化成功
/// @param result 成功返回的结果
/// @param error 失败返回的结果
typedef void(^SceneAdInitSDKCallBack)(BOOL isSucceed, NSDictionary * _Nullable result,NSDictionary * _Nullable error);

@interface SceneAdSdkManager : NSObject

/**
 全局配置参数类
 */
@property(nonatomic, strong, readonly) SceneAdSdkParams * _Nonnull params;

/**
 IronSource 的日志状态 YES为输出 NO为不输出，打包上架请将其关闭，默认不输出。
 */
@property (nonatomic, assign) BOOL isISDebug;

/**
 app审核是否通过
 */
@property (nonatomic, assign) BOOL mstatus;

/**
 后台配置应用提现开关，初始化成功后，可根据此值来控制是否加载显示提现页
 */
@property (nonatomic, assign) BOOL withdrawStatus;

///  SDK初始化回调，无网络情况下初始化失败，当检测有网络状态后，SDK会重新初始化，并回调
@property (nonatomic, copy) SceneAdInitSDKCallBack _Nullable initSDKCallBack;


/**
 实例化单例
 @return 对象
 */
+ (SceneAdSdkManager *_Nonnull)shareManager;

/**
 获取 SDK 版本
 */
+ (NSString *_Nonnull)sceneSdkVersion;

/**
 归因用户标识符：App的每次新安装都会创建一个唯一的ID，你可以该ID去实现多种目的
 */
@property (nonatomic, strong, readonly) NSString * _Nullable ascribeUID;

/**
 在某些极端情况下，您可能出于法律和隐私合规方面的考虑，需要关闭AF所有 SDK 数据记录。true为停止运行，false为开始记录，默认false
 */
@property(nonatomic, assign) BOOL isStopped;

/**
 初始化SDK

 @param params 参数
 @param success SDK初始化完成后状态回调
 @param failure 初始化失败回调
 */
- (void)setupSDK:(SceneAdSdkParams *_Nonnull)params success:(nullable void (^)(NSDictionary *_Nullable result))success failure:(nullable void (^)(NSDictionary * _Nullable error))failure DEPRECATED_MSG_ATTRIBUTE("use setupSceneSDK: instead.");

/**
 初始化SDK，调用 initSDKCallBack 回调获得结果

 @param params 配置参数
 */
- (void)setupSceneSDK:(SceneAdSdkParams *_Nonnull)params;

/**
 根据参数进行路由跳转

 @param actionJsonDic 路由参数
 */
- (void)launch:(NSDictionary *_Nonnull)actionJsonDic;

/**
 通知网页
 对应执行网页脚本 javascript:onNotifyWebMessage(%@)
 */
- (void)notifyWebPageMessage:(NSDictionary *)params;

/// 打印日志。默认不输出
/// @param enable YES为输出
- (void)setSceneAdLogEnable:(BOOL)enable;

/// 重新设置SDK中phead的参数
/// @param phead phead的参数
/// @param success 成功回调
/// @param failure 失败回调
- (void)resignSceneAdSdkPhead:(NSDictionary *_Nonnull)phead success:(nullable void (^)(NSString * _Nullable msg))success failure:(nullable void (^)(NSError * _Nullable error))failure;


@end
