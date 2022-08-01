    //
    //  SceneAdConfigModel.h
    //  SceneAdSDKDemo
    //
    //  Created by xmiles on 2019/5/16.
    //  Copyright © 2019 gaven. All rights reserved.
    //

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "SceneAdSdkStyleTypeHeader.h"


NS_ASSUME_NONNULL_BEGIN

/**
 广告类型model
 **/

@interface SceneAdRuleConfig : NSObject

@property (nonatomic, copy) NSString *Id;
@property (nonatomic, copy) NSString *typeName;
@property (nonatomic, copy) NSString *utime;
@property (nonatomic, copy) NSString *position;
@property (nonatomic, copy) NSString *adId;
@property (nonatomic, copy) NSString *fullScreen;
@property (nonatomic, copy) NSString *missRate;
@property (nonatomic, copy) NSString *ctime;
@property (nonatomic, copy) NSString *Operator;
@property (nonatomic, copy) NSString *adPlatform;
@property (nonatomic, copy) NSString *sort;
@property (nonatomic, copy) NSString *platformName;
@property (nonatomic, copy) NSString *status;
@property (nonatomic, copy) NSString *guideRate;
@property (nonatomic, copy) NSString *sdkVersion; //SDK的版本号

@property (nonatomic, strong) NSNumber *isShow;

@property (nonatomic, assign) NSInteger adType;
@property (nonatomic, assign) NSInteger adStyle;//信息流广告样式,1:文字上，2：文字下  插屏类型：5，6，7，8
@property (nonatomic, assign) NSInteger screenAdCountDown; //倒计时
@property (nonatomic, strong) NSNumber *thirdEcpm;//第三方的Ecpm

@property (nonatomic, assign) NSInteger adSourceType; //广告源类型属于哪种
@property (nonatomic, assign) NSInteger index;//广告在广告规则列表的第几个

@end


@interface SceneAdConfigModel :NSObject

@property (nonatomic ,strong) NSNumber *isShow;
@property (nonatomic ,copy) NSString *guideReward;
@property (nonatomic ,copy) NSArray<SceneAdRuleConfig *> * adConfig;

+(SceneAdConfigModel *)modelWithDic:(NSDictionary *)dic;

@end

NS_ASSUME_NONNULL_END

//adId (string, optional): 第三方广告ID ,
//adPlatform (string, optional): 广告平台: xiaomi-小米, GDT-广点通, CSJ-穿山甲 ,
//adStyle (integer, optional): 广告样式,1:文字上，2：文字下 ,
//adType (integer, optional): 广告类型, 例如: 1-激励视频广告 ,
//ctime (string, optional): 创建时间 ,
//errorClickRate (integer, optional): 误点击概率 ,
//fullScreen (integer, optional): 是否全屏广告 ,
//guideRate (integer, optional): 引导奖励概率 ,
//id (integer, optional): 主键ID ,
//isShow (boolean, optional): 是否展示 ,
//missRate (integer, optional): 被忽略概率 ,
//newUser48hAdId (string, optional): 24h-48h新用户使用的第三方广告ID ,
//newUserAdId (string, optional): 24h新用户使用的第三方广告ID ,
//operator (string, optional): 操作人 ,
//os (string, optional): 操作系统 ,
//platformName (string, optional): 广告平台名称, 冗余字段, 作用与后台 ,
//position (integer, optional): ad_position_config主键ID ,
//sort (integer, optional): 排序字段, 升序, 默认9999 ,
//status (integer, optional): 状态: 0-不可用, 1-可用 ,
//typeName (string, optional): 广告类型名称, 冗余字段, 作用与后台 ,
//utime (string, optional): 更新时间
