//
//  QqcEntityLocation.h
//  HybridFramework
//
//  Created by qiuqinchuan on 15/8/24.
//  Copyright (c) 2015年 ZQ. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface EntityLocation : NSObject

@property(nonatomic, copy) NSString* mStrPosX;      // 经度
@property(nonatomic, copy) NSString* mStrPosY;      // 纬度
@property(nonatomic, copy) NSString* mStrCoordinateType; //0,原始的经纬度坐标;      1,百度地图中获取的坐标

@end
