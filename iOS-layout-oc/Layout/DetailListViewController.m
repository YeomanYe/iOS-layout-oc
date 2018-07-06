//
//  DetailListViewController.m
//  iOS-layout-oc
//
//  Created by 叶铭 on 2018/7/1.
//  Copyright © 2018年 叶铭. All rights reserved.
//

#import "DetailListViewController.h"

@interface DetailListViewController (){
    NSString *identifierNormal;
}
@end

@implementation DetailListViewController

#pragma mark - TVController

- (instancetype)init {
    identifierNormal = @"abc";
    return [self initWithStyle:UITableViewStylePlain];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete implementation, return the number of rows
    return _dataSource.count;
}

- (void)viewDidLoad {
    [super viewDidLoad];

    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:identifierNormal];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifierNormal forIndexPath:indexPath];
    // cell = nil;
    if(!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:identifierNormal];
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    }
    cell.textLabel.text = [_dataSource allKeys][indexPath.row];
    cell.detailTextLabel.text = [_dataSource allValues][indexPath.row];
    // Configure the cell...
    cell.textLabel.font = [UIFont systemFontOfSize:15];
    cell.detailTextLabel.font = [UIFont systemFontOfSize:13];
    [cell layoutSubviews];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    NSString *title = nil;
    title = [_dataSource allKeys][indexPath.row];
    return [self didSelectItemWithTitle:title];
}

/*- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 64;
}*/

@end
