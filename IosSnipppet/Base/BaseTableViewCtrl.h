//
//  BaseTableViewCtrl.h
//  iOS-layout-oc
//
//  Created by 叶铭 on 2018/6/30.
//  Copyright © 2018年 叶铭. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BaseViewCtrl.h"

@interface BaseTableViewCtrl : BaseViewCtrl{
    UITableView *_tableView;
}
@property (nonatomic) UITableView *tableView;
@end

@interface BaseTableViewCtrl(UISubclassingHooks)
-(instancetype)initWithStyle:(UITableViewStyle)style;
- (void)initDataSource;
- (void)didSelectItemWithTitle:(NSString *)title;

@end
