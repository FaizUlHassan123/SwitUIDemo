//
//  SceneAdSdkLoaderParams.h
//  SceneAdSDKDemo
//
//  Created by xmiles on 2019/5/17.
//  Copyright © 2019 gaven. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "SceneAdSdkStyleTypeHeader.h"

/**
 广告加载参数类
 **/

@interface SceneAdSdkLoaderParams : NSObject

/**
 作为广告sdk的承载view
 */
@property(nonatomic, strong) UIView *contentView;

/**
 作为广告SDK的承载VC，如不设置则默认为当前最上层的VC，若设置则在广告需要弹出时用这个VC
 */
@property (nonatomic,strong) UIViewController *adViewController;

/**
 ===== 注意 =====
 当广告源为banner广告，需要传入尺寸类型；如果不传，默认为SceneAdSdk_Ad_Banner_Size_32050，320 x 50；
 */
@property (nonatomic,assign) SceneAdSdk_Ad_Banner_Size bannerType;

/**
 广告标识
 */
@property (nonatomic,strong) NSString *adPlacement;
/**
 广告类型
 */
@property (nonatomic,assign) SceneAdSdk_Ad_Show_Type adType;
/**
 场景页面名称
 */
@property (nonatomic,strong) NSString *pageName;

/**
 广告源
 */
@property (nonatomic,assign) SceneAdSdk_Ad_Type sourceType;


@end


