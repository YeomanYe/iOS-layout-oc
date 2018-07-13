//
//  ListViewController.h
//  iOS-layout-oc
//
//  Created by 叶铭 on 2018/7/1.
//  Copyright © 2018年 叶铭. All rights reserved.
//

#import "BaseTableViewController.h"
#import "OrderDictionary.h"

@interface ListViewController : BaseTableViewController
@property (nonatomic, strong) OrderDictionary *detailDataSource;
@property (nonatomic, strong) NSArray<NSString *> *singleDataSource;
- (void)initDataSource;
@end
