//
//  SceneAdSdkAdModel.h
//  SceneAdSdk
//
//  Created by xmiles on 2019/7/15.
//  Copyright © 2019 gaven. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SceneAdConfigModel.h"
#import "SceneAdSdkStyleTypeHeader.h"

NS_ASSUME_NONNULL_BEGIN

/**
 SDK广告model类
 用于业务端取广告源数据
 */
@interface SceneAdSdkAdDataModel : NSObject

/**
 广告类型
 表明是哪类广告，包括ironsource，其他等
 */
@property (nonatomic, assign) SceneAdSdk_Ad_Type adModelType;

/**
 广告配置model（通用）, 在其他的model里也可能有
 */
@property (nonatomic, strong) SceneAdRuleConfig *configModel;



@end

NS_ASSUME_NONNULL_END
