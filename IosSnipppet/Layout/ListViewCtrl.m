//
//  ListViewCtrl.m
//  iOS-layout-oc
//
//  Created by 叶铭 on 2018/7/1.
//  Copyright © 2018年 叶铭. All rights reserved.
//

#import "ListViewCtrl.h"
#import "BaseCell.h"

@interface ListViewCtrl (){
    NSString *identifierCell;
    BaseCell *cell;
}
@end

@implementation ListViewCtrl

#pragma mark - TVController

- (instancetype)init {
    identifierCell = @"identifierCell";
    return [self initWithStyle:UITableViewStylePlain];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    NSInteger sum = 0;
    if(_singleDataSource) sum = _singleDataSource.count;
    else if(_detailDataSource) sum = _detailDataSource.count;
    return sum;
}

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    cell = [tableView dequeueReusableCellWithIdentifier:identifierCell];
    // cell = nil;
    [self renderWithSingle:indexPath];
    [self renderWithDetail:indexPath];
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    return cell;
}

-(void)renderWithSingle:(NSIndexPath *)indexPath{
    if(!_singleDataSource) return;
    if(!cell) {
        cell = [[BaseCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:identifierCell];
    }
    cell.textLabel.text = _singleDataSource[indexPath.row];
    // Configure the cell...
    cell.textLabel.font = [UIFont systemFontOfSize:15];
}

-(void)renderWithDetail:(NSIndexPath *)indexPath{
    if(!_detailDataSource) return;
    if(!cell) {
        cell = [[BaseCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:identifierCell];
    }
    NSString *key = [_detailDataSource allKeys][indexPath.row];
    cell.textLabel.text = key;
    cell.detailTextLabel.text = [_detailDataSource objectForKey:key];
    // Configure the cell...
    cell.textLabel.font = [UIFont systemFontOfSize:15];
    cell.detailTextLabel.font = [UIFont systemFontOfSize:13];
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    NSString *title = nil;
    title = [_detailDataSource allKeys][indexPath.row];
    return [self didSelectItemWithTitle:title];
}

-(void)initDataSource{
    
}

@end
