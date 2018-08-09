//
// Created by 叶铭 on 2018/7/13.
// Copyright (c) 2018 叶铭. All rights reserved.
//

#import "ISTabCtrl.h"


@implementation ISTabCtrl {

}
- (void)initDataSource {

}

- (void)didInitialize {
    [super didInitialize];
    NSArray *datas = self.dataSource;
    NSMutableArray *vcs = [[NSMutableArray alloc] init];
    for(NSDictionary *dict in datas){
        UIViewController *vc = [dict valueForKey:@"vc"];
        vc.tabBarItem.title = [dict valueForKey:@"title"];
        vc.tabBarItem.image = [UIImage imageNamed:[dict valueForKey:@"icon"]];
        vc.tabBarItem.badgeValue = [dict valueForKey:@"badge"];
        [vcs addObject:vc];
    }
    self.viewControllers = [vcs copy];
}


@end