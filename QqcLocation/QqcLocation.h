//
//  QqcLocation.h
//  HybridFramework
//
//  Created by qiuqinchuan on 16/1/7.
//  Copyright © 2016年 ZQ. All rights reserved.
//

#import "QqcEntityLocation.h"

typedef void(^blockGetMyLocation)(EntityLocation* locationInfo);
typedef void(^blockGetAddress)(NSString* strAddr);

@interface QqcLocation : NSObject

/**
*  获取我的定位信息
*
*  @param blockLocation 信息回调
*/
- (void)getMyLocation:(blockGetMyLocation)blockLocation;

/**
 *  获取我的地址
 *
 *  @param blockAddr 回调
 */
- (void)getMyAddress:(blockGetAddress)blockAddr;

@end
