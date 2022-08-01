//
//  SceneAdParams.h
//  SceneAdSDKDemo
//
//  Created by xmiles on 2019/5/15.
//  Copyright © 2019 gaven. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SceneAdSdkStyleTypeHeader.h"

@interface SceneAdSdkParams : NSObject

/**
 归因SDK的Key
 */
@property (nonatomic, strong) NSString *ascribeKey;

/**
 应用项目App Store appID
 */
@property (nonatomic, strong) NSString *appleAppID;

/**
 配置SDK可以延迟多久再将数据发给服务器，(秒)
 如果用户同意收集IDFA，SDK将会把IDFA添加到已排队的缓存数据中，并立刻开始发送数据（无需等待暂停时才结束）。
 如果暂停时常结束，而ATT授权状态为不授权或不确定，那么SDK会发送不包含IDFA的缓存数据。
 */
@property (nonatomic, strong) NSString *waitForATTTimeout;

/**
 ironsouce的AppKey
 */
@property (nonatomic, strong) NSString *is_AppKey;

/**
 是否debug模式
 */
@property (nonatomic, assign) BOOL isDebug;

/**
 设置此phead会自动生成adhead并更新到此类的adhead中
 如下是SDK需要的参数，
 /// 产品id：prdid;
 
 /// 渠道号：channel;

 /// App的版本号：cversion；如 @1
 */
@property (nonatomic, strong) NSDictionary *phead;

/**
 从哪里来,统计用
 */
@property (nonatomic, copy) NSString *startFrom;

/**
 adhead:会根据传入的phead自动转化   
 */
@property (nonatomic, strong, readonly) NSDictionary *adhead;

/**
 用户标签，由应用方进行设置，用于对特定用户进行识别，会加载到adHead中
 */
@property (nonatomic, copy) NSString * tag;

/**
 是否开启内部的神策统计功能，默认为true，如果自己独立接入了神策，则设置为false。
 */
@property (nonatomic, assign) BOOL enableInnerTrack;

/**
 广告源
 */
@property (nonatomic,assign) SceneAdSdk_Ad_Type sourceType;

@end
