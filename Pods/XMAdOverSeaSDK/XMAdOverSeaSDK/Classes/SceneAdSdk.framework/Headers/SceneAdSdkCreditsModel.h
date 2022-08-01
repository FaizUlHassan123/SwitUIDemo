//
//  SceneAdSdkCreditsModel.h
//  SceneAdSdk
//
//  Created by xmiles on 2021/2/25.
//  Copyright © 2021 dengsir. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface SceneAdSdkCoinModel : NSObject

// 积分数
@property (nonatomic, assign) double coin;

// 积分系统code
@property (nonatomic, copy) NSString *sysCode;

// 累计总积分
@property (nonatomic, assign) double totalAdd;

// 换算积分数，例如1元=1000积分，则值为1000
@property (nonatomic, assign) NSInteger convertCoin;

// 余额，当convertCoin有值的时候才有值
@property (nonatomic, strong) NSString *balance;

@end

@interface SceneAdSdkCoinDetailModel : NSObject

// 添加积分附加说明
@property (nonatomic, copy) NSString *backup;
// 流水号
@property (nonatomic, copy) NSString *requestNo;
// 加之前的积分
@property (nonatomic, assign) double beforeCoin;
// 实际积分
@property (nonatomic, assign) double actualCoin;
// 操作积分
@property (nonatomic, assign) double operateCoin;

@end

@interface SceneAdSdkCreditsModel : NSObject
// 获得金币
@property (nonatomic, assign) double optCoin;
// 积分账户信息
@property (nonatomic, strong) SceneAdSdkCoinModel *userCoin;
// 积分变动明细
@property (nonatomic, strong) SceneAdSdkCoinDetailModel *userCoinDetail;
@end


@interface SceneAdSdkCoinConfig : NSObject

// 积分系统别名
@property (nonatomic, copy) NSString *configName;

// 积分系统图标
@property (nonatomic, copy) NSString *icon;

// 积分系统编码
@property (nonatomic, copy) NSString *sysCode;
 
// 是否可提现，1-提现，0-不可提现
@property (nonatomic, assign) NSInteger withdrawAble;

// 换算积分数，例如1元=1000积分，则值为1000
@property (nonatomic, assign) NSInteger convertCoin;

@end

@interface SceneAdSdkCoinConfigList : NSObject

@property (nonatomic, strong) NSArray *configList;

@end


NS_ASSUME_NONNULL_END
