//
//  BaseTableViewController.h
//  iOS-layout-oc
//
//  Created by 叶铭 on 2018/6/30.
//  Copyright © 2018年 叶铭. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BaseTableViewController : UITableViewController

@end

@interface BaseTableViewController(UISubclassingHooks)

- (void)initDataSource;
- (void)didSelectItemWithTitle:(NSString *)title;

@end