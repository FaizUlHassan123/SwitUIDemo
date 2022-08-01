//
//  SceneAdSdkCreditParams.h
//  SceneAdSdk
//
//  Created by xmiles on 2021/3/15.
//  Copyright © 2021 dengsir. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface SceneAdSdkCreditParams : NSObject

/// 添加积分数量，精确小数点后3位，第4位会遵循四舍五入（指定积分数量,传0则根据积分规则随机生成，如果为固定积分添加，传0增加后台配置数量）
@property (nonatomic, assign) double coinCount;

/// 积分业务编码
@property (nonatomic, assign) NSInteger coinCode;

/// 积分系统编码
@property (nonatomic, copy) NSString *sysCode;

/// 添加积分备注说明（客户端备注,不传则取积分规则配置的值,记录到金币明细中）
@property (nonatomic, copy) NSString *backup;

@end

NS_ASSUME_NONNULL_END
