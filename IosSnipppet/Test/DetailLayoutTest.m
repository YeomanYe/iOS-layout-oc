//
// Created by 美德远健 on 2018/7/2.
// Copyright (c) 2018 叶铭. All rights reserved.
//

#import "DetailLayoutTest.h"


@implementation DetailLayoutTest {

}
- (void)initDataSource {
    self.dataSource = @[@{@"text":@"item1",@"detailText":@"item1 detailText"},@{@"text":@"item2",@"detailText":@"item2 detialText"}];
    self.cellStyle = UITableViewCellStyleSubtitle;
}
-(void)didSelectItem:(NSString *)title index:(int)index{
    [super didSelectItem:title index:index];
}
@end