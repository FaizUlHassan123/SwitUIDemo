//
//  SceneAdSdkViewLoader.h
//  SceneAdSdk
//
//  Created by xmiles on 2019/5/24.
//  Copyright © 2019 gaven. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <SceneAdSdk/SceneAdSdkNavigationViewController.h>
#import <SceneAdSdk/SceneAdSdkWebViewController.h>

NS_ASSUME_NONNULL_BEGIN
/**
 此类竟然是福利页中心加载类 -.-！
 */
@interface SceneAdSdkViewLoader : NSObject

//当前加载的webView
@property (nonatomic, strong) SceneAdSdkWebViewController *currentWebViewController;

//拿到套navigationViewController的webView
-(SceneAdSdkNavigationViewController *)getNavigationViewControllerWithWebView;

//拿到套navigationViewController的webView, 控制福利页首页是否显示导航栏
-(SceneAdSdkNavigationViewController *)getNavigationViewControllerWithWebViewAndShowNav:(BOOL)isShowNav;

//强制刷新页面
-(void)reloadWeb;

@end

NS_ASSUME_NONNULL_END
