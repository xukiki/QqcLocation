//
//  LocationProcessor.m
//  HybridFramework
//
//  Created by qiuqinchuan on 16/1/7.
//  Copyright © 2016年 ZQ. All rights reserved.
//
#import "LocationHelper.h"
#import "CCLocationManager.h"
#import "QqcUtility.h"

@interface LocationHelper()

@property(nonatomic, strong)CLLocationManager* locationmanager;     //定位管理对象

@end

@implementation LocationHelper

#pragma mark - 初始化
- (CLLocationManager *)locationmanager
{
    if (nil == _locationmanager)
    {
        [UIApplication sharedApplication].idleTimerDisabled = TRUE;
        _locationmanager = [[CLLocationManager alloc] init];
    }
    
    return _locationmanager;
}

/**
 *  获取我的定位信息
 *
 *  @param blockLocation 信息回调
 */
- (void)getMyLocation:(blockGetMyLocation)blockLocation
{
    if ([QqcUtility getSystemMainVersion] > 7)
    {
        [_locationmanager requestWhenInUseAuthorization];   //NSLocationWhenInUseDescription
    }
    
    [[CCLocationManager shareLocation] getLocationCoordinate:^(CLLocationCoordinate2D locationCorrrdinate) {
        
        EntityLocation* entity = [[EntityLocation alloc] init];
        entity.mStrPosX = [NSString stringWithFormat:@"%f", locationCorrrdinate.longitude];
        entity.mStrPosY = [NSString stringWithFormat:@"%f", locationCorrrdinate.latitude];
        entity.mStrCoordinateType = @"0";
        
        blockLocation(entity);
    }];
}

/**
 *  获取我的地址
 *
 *  @param blockAddr 回调
 */
- (void)getMyAddress:(blockGetAddress)blockAddr
{
    [[CCLocationManager shareLocation] getAddress:^(NSString *addressString) {
        blockAddr(addressString);
    }];
}


@end
