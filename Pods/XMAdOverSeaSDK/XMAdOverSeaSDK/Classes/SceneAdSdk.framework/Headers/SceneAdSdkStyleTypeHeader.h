//
//  SceneAdSdkStyleTypeHeader.h
//  SceneAdSdk
//
//  Created by xmiles on 2019/6/11.
//  Copyright © 2019 gaven. All rights reserved.
//


/**
 广告类型头文件
 */

// 广告类型 2021.3.15 新增
typedef NS_ENUM(NSUInteger, SceneAdSdk_Ad_Type) {
    SceneAdSdk_Ad_Type_ApplovinMax , // applovin
    SceneAdSdk_Ad_Type_IronSouce , // ironsouce
    SceneAdSdk_Ad_Type_Other, // 其他
    //后续有新增的广告，可以在后面加
};

//banner 尺寸类型
typedef NS_ENUM(NSUInteger, SceneAdSdk_Ad_Banner_Size) {
    SceneAdSdk_Ad_Banner_Size_32050 = 0,    // 320 x 50
    SceneAdSdk_Ad_Banner_Size_32090,       // 320 x 90
    SceneAdSdk_Ad_Banner_Size_300250,       // 300 x 250
    SceneAdSdk_Ad_Banner_Size_Smart,       // (iPhone ≤ 720) 320 x 50 If (iPad > 720) 728 x 90
};


// 广告展示类型 2021.3.5 新增
typedef NS_ENUM(NSUInteger, SceneAdSdk_Ad_Show_Type) {
    SceneAdSdk_Ad_Type_Rewarded, // 激励视频
    SceneAdSdk_Ad_Type_Interstitial, //插屏
    SceneAdSdk_Ad_Type_Banner, // banner
    SceneAdSdk_Ad_Type_Offerwall, // offerwall
};
