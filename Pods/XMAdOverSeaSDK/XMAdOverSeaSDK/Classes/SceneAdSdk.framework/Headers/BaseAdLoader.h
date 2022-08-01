//
//  BaseAdLoader.h
//  SceneAdSdk
//
//  Created by xmiles on 2019/8/22.
//  Copyright © 2019 dengsir. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface BaseAdLoader : NSObject

/** 广告内容View */
@property (nonatomic,strong) UIView * _Nullable contentView;
/** 作为广告SDK的承载VC，如不设置则默认为当前最上层的VC，若设置则在广告需要弹出时用这个VC */
@property (nonatomic,strong) UIViewController *adViewController;

/** 显示广告，在广告加载成功后调用 */
- (void)showAd;

/** SDK版本号 */
+ (NSString *_Nullable)sdkVerionString;


/** 加载成功 */
@property (nonatomic,copy) void (^ _Nullable adDidLoadBlock)(void);
/** 加载失败 */
@property (nonatomic,copy) void (^ _Nullable adDidFailBlock)(NSError *_Nullable error);
/** 将要显示 */
@property (nonatomic,copy) void (^ _Nullable adWillVisibleBlock)(void);
/** 广告显示失败 */
@property (nonatomic,copy) void (^ _Nullable adVisibleFailBlock)(NSError *_Nullable error);
/** 关闭广告 */
@property (nonatomic,copy) void (^ _Nullable adDidCloseBlock)(void);
/** 广告已经被打开 */
@property (nonatomic,copy) void (^ _Nullable adDidOpenBlock)(void);
/** 点击了广告 */
@property (nonatomic,copy) void (^ _Nullable adDidClickBlock)(void);
/** 视频播放完成 */
@property (nonatomic,copy) void (^ _Nullable adVideoDidPlayBlock)(void);
/**
 激励完成
 @param rewardResult 激励结果
 */
@property (nonatomic,copy) void (^ _Nullable adRewardFinshBlock)(BOOL rewardResult);


@end

NS_ASSUME_NONNULL_END
