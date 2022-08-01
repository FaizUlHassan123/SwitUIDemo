//
//  SceneAdSdkWebModel.h
//  SceneAdSdk
//
//  Created by xmiles on 2019/5/22.
//  Copyright © 2019 gaven. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
NS_ASSUME_NONNULL_BEGIN

@interface SceneAdSdkWebModel : NSObject

@property (nonatomic,   copy) NSString *title;
@property (nonatomic,   copy) NSString *htmlUrl;
@property (nonatomic, assign) BOOL withHead;
@property (nonatomic, assign) BOOL usePost;
@property (nonatomic, assign) BOOL isFullScreen;
/** 状态栏颜色 */
@property (nonatomic, assign) UIStatusBarStyle statusBarStyle;
//@property (nonatomic, assign) BOOL isRefresh;
//@property (nonatomic, assign) BOOL isNeedParams;
//@property (nonatomic, assign) BOOL whenLoginReloadPage;

/**
 跳转方式
 0 = 根据当前最上面的VC是否有导航栏，有则push，无则Present
 1 = present
 */
@property (nonatomic, assign) NSInteger jumpStyle;

@end

NS_ASSUME_NONNULL_END
