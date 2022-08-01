//
//  SceneAdSdkLoader.h
//  SceneAdSDKDemo
//
//  Created by xmiles on 2019/5/17.
//  Copyright © 2019 gaven. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SceneAdSdkLoaderParams.h"

#import "SceneAdConfigModel.h"
#import "SceneAdSdkAdDataModel.h"

@class SceneAdSdkLoader;

/**
 加载器完成回调类声明
 
 @param success 标识是否已完成加载
 */
typedef void(^SceneAdSdkLoaderCompleteBlock)(BOOL success,NSError * _Null_unspecified error);

/**
 广告加载类，所有的广告均通过此类加载
 */
@interface SceneAdSdkLoader : NSObject

#pragma mark - ======= 回调映射代码块 =======

/** 广告加载成功 */
@property (nonatomic,copy) void (^ _Nullable adDidLoadBlock)(SceneAdSdkLoader *_Nullable loader);
/** 广告加载失败 */
@property (nonatomic,copy) void (^ _Nullable adDidFailBlock)(SceneAdSdkLoader *_Nullable loader,NSError *_Nullable error);
/** 广告将要显示 */
@property (nonatomic,copy) void (^ _Nullable adWillVisibleBlock)(SceneAdSdkLoader *_Nullable loader);
/** 广告打开 */
@property (nonatomic,copy) void (^ _Nullable adDidOpenBlock)(SceneAdSdkLoader *_Nullable loader);
/** 广告显示失败 */
@property (nonatomic,copy) void (^ _Nullable adVisibleFailBlock)(SceneAdSdkLoader *_Nullable loader);
/** 关闭广告 */
@property (nonatomic,copy) void (^ _Nullable adDidCloseBlock)(SceneAdSdkLoader *_Nullable loader);
/** 点击了广告 */
@property (nonatomic,copy) void (^ _Nullable adDidClickBlock)(SceneAdSdkLoader *_Nullable loader);
/** 视频播放完成 */
@property (nonatomic,copy) void (^ _Nullable adVideoDidPlayBlock)(SceneAdSdkLoader *_Nullable loader);
/**
 激励完成
 @param rewardResult 激励结果
 */
@property (nonatomic,copy) void (^ _Nullable adRewardFinshBlock)(SceneAdSdkLoader *_Nullable loader,BOOL rewardResult);


/** 当前广告位id */
@property (nonatomic,copy,readonly) NSString *_Nullable position;
/** 广告加载参数 */
@property (nonatomic,strong) SceneAdSdkLoaderParams *_Nullable parmas;

/**
 初始化加载广告数据
 
 @param adPlacement 广告位
 @param params 参数
 @return 加载类对象
 */
- (instancetype _Nullable)initWithAdPlacement:(NSString *_Nullable)adPlacement params:(SceneAdSdkLoaderParams *_Nullable)params;

/** 显示广告数据 */
- (void)showAd;

/**
 更新子视图布局，用于仅当广告类型是信息流里重新撑满父视图
 @param sview 信息流广告父视图
 */
- (void)updateFeedAdWithSuperView:(UIView *_Nonnull)sview;

- (void)adLoad;

@end
