//
// Created by 叶铭 on 2018/7/13.
// Copyright (c) 2018 叶铭. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface BaseTabBarCtrl : UITabBarController
@property (nonatomic, strong) UIColor *tintColor;
-(void)didInitialize;
-(void)initDataSource;
@end