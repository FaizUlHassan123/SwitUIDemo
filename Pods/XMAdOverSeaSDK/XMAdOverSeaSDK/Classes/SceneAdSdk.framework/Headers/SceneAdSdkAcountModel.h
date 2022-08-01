//
//  SceneAdSdkAcountModel.h
//  SceneAdSdk
//
//  Created by xmiles on 2021/2/25.
//  Copyright © 2021 dengsir. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface SceneAdSdkAcountModel : NSObject

@property (nonatomic, strong) NSString *accessToken;
// 用户邮箱
@property (nonatomic, strong) NSString *email;
// 归因渠道
@property (nonatomic, strong) NSString *activityChannel;
// 初始化渠道
@property (nonatomic, strong) NSString *channel;
// 创建时间 (0时区)
@property (nonatomic, strong) NSString *ctime;
// 国家编码
@property (nonatomic, strong) NSString *countryCode;
// 是否为新用户
@property (nonatomic, assign) BOOL newUser;
// 用户ID
@property (nonatomic, strong) NSString *userId;
// 时区
@property (nonatomic, strong) NSString *timezone;
// 平台
@property (nonatomic, strong) NSString *platform;
@end

@interface SceneAdGameScenesMap : NSObject

/// 刮刮卡
@property (nonatomic, assign) BOOL LuckyScratch;

/// 老虎机
@property (nonatomic, assign) BOOL Slot;

/// 每日签到
@property (nonatomic, assign) BOOL Checkin;

/// 大转盘
@property (nonatomic, assign) BOOL LuckyWheel;

/// 气泡宝箱
@property (nonatomic, assign) BOOL Openbox__bubble;

/// 弹出宝箱
@property (nonatomic, assign) BOOL Openbox__popup;

/// 离线宝箱
@property (nonatomic, assign) BOOL Openbox__offline;

/// 余额入口：默认是0：关闭，不展示，1：可展示  2：不可点击
@property (nonatomic, assign) NSInteger Balance;

@end

@interface SceneAdSdkConfigModel : NSObject

// app审核是否通过
@property (nonatomic, assign) BOOL mstatus;

// 应用提现配置开关
@property (nonatomic, assign) BOOL withdrawStatus;

// 活动相关配置
@property (nonatomic, strong) SceneAdGameScenesMap *gameScenesMap;

@end

@interface SceneAdSdkLoginModel : NSObject

//用户信息模型
@property (nonatomic, strong) SceneAdSdkAcountModel *accountDto;
// 配置模型
@property (nonatomic, strong) SceneAdSdkConfigModel *configDto;

@end

NS_ASSUME_NONNULL_END
