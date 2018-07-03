//
//  ListViewController.m
//  iOS-layout-oc
//
//  Created by 叶铭 on 2018/6/30.
//  Copyright © 2018年 叶铭. All rights reserved.
//

#import "ListViewController.h"

@interface ListViewController ()

@end

@implementation ListViewController

#pragma mark - TVController

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete implementation, return the number of rows
    return _dataSource.count;
}

- (instancetype)init {
    return [self initWithStyle:UITableViewStylePlain]
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *identifierNormal = @"cellNormal";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifierNormal forIndexPath:indexPath];
    if (!cell) cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:identifierNormal];
    cell.textLabel.text = _dataSource[indexPath.row];
    // Configure the cell...
    cell.textLabel.font = [UIFont systemFontOfSize:15];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    NSString *title = nil;
    title = _dataSource[indexPath.row];
    return [self didSelectItemWithTitle:title];
}


@end
