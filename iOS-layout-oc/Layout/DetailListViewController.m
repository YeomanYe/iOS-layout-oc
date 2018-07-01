//
//  DetailListViewController.m
//  iOS-layout-oc
//
//  Created by 叶铭 on 2018/7/1.
//  Copyright © 2018年 叶铭. All rights reserved.
//

#import "DetailListViewController.h"

@interface DetailListViewController ()

@end

@implementation DetailListViewController

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete implementation, return the number of rows
    return _dataSource.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *identifierNormal = @"cellNormal";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifierNormal forIndexPath:indexPath];
    if(!cell) cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:identifierNormal];
    cell.textLabel.text = [_dataSource allKeys][indexPath.row];
    cell.detailTextLabel.text = [_dataSource allValues][indexPath.row];
    // Configure the cell...
    cell.textLabel.font = [UIFont systemFontOfSize:15];
    cell.detailTextLabel.font = [UIFont systemFontOfSize:13];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    NSString *title = nil;
    title = [_dataSource allKeys][indexPath.row];
    return [self didSelectItemWithTitle:title];
}

@end
