//
//  SceneAdSdkWebViewController.h
//  SceneAdSdk
//
//  Created by xmiles on 2019/5/21.
//  Copyright © 2019 gaven. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SceneAdSdkWebView.h"
#import "SceneAdSdkWebModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface SceneAdSdkWebViewController : UIViewController

/**
 *  开始加载URL时回调
 */
@property (nonatomic, copy) void (^startLoadWeb)(void);
/**
 *  加载网页完成时回调
 */
@property (nonatomic, copy) void (^endLoadWeb)(void);

/**
 *  dismiss提现页时回调
 */
@property (nonatomic, copy) void (^dismissWithdrawWeb)(void);

/**
 webView
 */
@property (nonatomic, strong) SceneAdSdkWebView *webView;

/**
 加载类
 */
@property (nonatomic, strong) SceneAdSdkWebModel *webModel;

/**
 是否显示返回按钮
 */
@property (nonatomic, assign) BOOL hasBack;

/**
 是否全屏
 */
@property (nonatomic, assign) BOOL isFullScreen;

/**
 重新加载
 */
-(void)reloadWeb;

@end

NS_ASSUME_NONNULL_END
