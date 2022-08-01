//
//  SceneAdSdkWithdrawVC.h
//  SceneAdSdk
//
//  Created by xmiles on 2021/1/15.
//  Copyright © 2021 dengsir. All rights reserved.
//

#import "SceneAdSdkWebViewController.h"

NS_ASSUME_NONNULL_BEGIN

// 调用提现页的时候，如果有要求可以在后台配置是否可打开
@interface SceneAdSdkWithdrawVC : SceneAdSdkWebViewController

/// 从哪个业务功能进入
@property (nonatomic, copy) NSString *fromPage;

/// 传入积分业务编码，进入积分提现系统
@property (nonatomic, copy) NSString *sysCode;

- (void)sceneAd_presentWithdrawVC;

- (void)sceneAd_pushWithdrawVC;

@end

NS_ASSUME_NONNULL_END
