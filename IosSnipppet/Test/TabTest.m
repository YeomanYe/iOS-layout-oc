//
// Created by 叶铭 on 2018/7/13.
// Copyright (c) 2018 叶铭. All rights reserved.
//

#import "TabTest.h"
#import "ListLayoutTest.h"
#import "DetailLayoutTest.h"

@implementation TabTest {

}
- (void)initDataSource {
    self.dataSource = @[@{@"icon":@"icon_component",@"title":@"List",@"vc": [[ListLayoutTest alloc] init]},
                        @{@"icon":@"icon_lab",@"title":@"Detail",@"vc": [[DetailLayoutTest alloc] init]}];
}

@end
