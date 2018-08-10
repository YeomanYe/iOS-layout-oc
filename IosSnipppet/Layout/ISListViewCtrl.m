//
//  ISListViewCtrl.m
//  iOS-layout-oc
//
//  Created by 叶铭 on 2018/7/1.
//  Copyright © 2018年 叶铭. All rights reserved.
//

#import "ISListViewCtrl.h"
#import "BaseCell.h"

@interface ISListViewCtrl (){
    NSString *identifierCell;
    BaseCell *cell;
}
@end

@implementation ISListViewCtrl

#pragma mark - TVController

- (instancetype)init {
    identifierCell = @"identifierCell";
    return [self initWithStyle:UITableViewStylePlain];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _dataSource.count;
}

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    cell = [tableView dequeueReusableCellWithIdentifier:identifierCell];
    switch (_cellStyle){
        case UITableViewCellStyleValue1:[self renderWithText:indexPath];break;
        case UITableViewCellStyleSubtitle:[self renderWithDetail:indexPath];
            break;
    }
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    return cell;
}

-(void)renderWithText:(NSIndexPath *)indexPath{
    if(!cell) {
        cell = [[BaseCell alloc] initWithStyle:_cellStyle reuseIdentifier:identifierCell];
    }
    cell.textLabel.text = [_dataSource[indexPath.row] valueForKey:@"text"];
    cell.textLabel.font = [UIFont systemFontOfSize:15];
}

-(void)renderWithDetail:(NSIndexPath *)indexPath{
    if(!cell) {
        cell = [[BaseCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:identifierCell];
    }
    cell.textLabel.text = [_dataSource[indexPath.row] valueForKey:@"text"];
    cell.detailTextLabel.text = [_dataSource[indexPath.row] valueForKey:@"detailText"];
    // Configure the cell...
    cell.textLabel.font = [UIFont systemFontOfSize:15];
    cell.detailTextLabel.font = [UIFont systemFontOfSize:13];
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    NSString *title = nil;
    title = [_dataSource[indexPath.row] valueForKey:@"text"];
    return [self didSelectItem:title index:indexPath.row];
}

-(void)initDataSource{
    
}
-(void)didSelectItem:(NSString *)title index:(int)index{
    NSLog(@"ISListView index:%d,title:%@",index,title);
}
@end
