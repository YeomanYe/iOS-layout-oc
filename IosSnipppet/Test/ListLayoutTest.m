//
// Created by 美德远健 on 2018/7/13.
// Copyright (c) 2018 叶铭. All rights reserved.
//

#import "ListLayoutTest.h"


@implementation ListLayoutTest {

}
-(void)initDataSource {
    self.dataSource = @[@{@"text":@"banana"},@{@"text":@"orange"},@{@"text":@"pear"}];
    self.cellStyle = UITableViewCellStyleValue1;
}
-(void)didSelectItem:(NSString *)title index:(int)index{
    [super didSelectItem:title index:index];
}
@end