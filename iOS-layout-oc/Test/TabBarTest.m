//
// Created by 叶铭 on 2018/7/13.
// Copyright (c) 2018 叶铭. All rights reserved.
//

#import "TabBarTest.h"
#import "ListLayoutTest.h"
#import "DetailLayoutTest.h"

@implementation TabBarTest {

}
- (void)initDataSource {
    self.dataSource = @[@{@"title":@"List",@"vc": [[ListLayoutTest alloc] init]}
                @{@"title":@"Detail",@"vc": [[DetailLayoutTest alloc] init]}];
}

@end