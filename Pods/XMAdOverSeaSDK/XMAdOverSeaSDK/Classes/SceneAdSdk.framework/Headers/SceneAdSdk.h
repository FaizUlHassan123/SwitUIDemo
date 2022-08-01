//
//  SceneAdSdk.h
//  SceneAdSDKDev
//
//  Created by xmiles on 2019/7/17.
//  Copyright © 2019 dengsir. All rights reserved.
//

#import <UIKit/UIKit.h>

//! Project version number for SceneAdSdk.
FOUNDATION_EXPORT double SceneAdSdkVersionNumber;

//! Project version string for SceneAdSdk.
FOUNDATION_EXPORT const unsigned char SceneAdSdkVersionString[];

// In this header, you should import all the public headers of your framework using statements like #import <SceneAdSdk/PublicHeader.h>

#pragma mark - SDK配置相关
// SDK配置管理类
#import <SceneAdSdk/SceneAdSdkManager.h>
#import <SceneAdSdk/SceneAdSdkJsToIosManager.h>
// 账号服务
#import <SceneAdSdk/SceneAdSdkAccount.h>
// 埋点
#import <SceneAdSdk/SceneAdSdkStatisticsTool.h>

#pragma mark - 广告相关
// 广告加载器
#import <SceneAdSdk/SceneAdSdkLoader.h>
#import <SceneAdSdk/SceneAdSdkLoaderParams.h>

#pragma mark - 模块相关
// 福利页
#import <SceneAdSdk/SceneAdSdkViewLoader.h>
#import <SceneAdSdk/SceneAdSdkWebViewController.h>
// 提现页
#import <SceneAdSdk/SceneAdSdkWithdrawVC.h>

//评分引导
#import <SceneAdSdk/SceneAdSdkScoreView.h>




