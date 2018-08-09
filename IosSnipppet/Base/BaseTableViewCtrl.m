//
//  BaseTableViewCtrl.m
//  iOS-layout-oc
//
//  Created by 叶铭 on 2018/6/30.
//  Copyright © 2018年 叶铭. All rights reserved.
//

#import "BaseTableViewCtrl.h"

@interface BaseTableViewCtrl () <UITableViewDelegate, UITableViewDataSource>


@end

@implementation BaseTableViewCtrl

- (instancetype)initWithStyle:(UITableViewStyle)style {
    self = [super init];
    _tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:style];
    _tableView.dataSource = self;
    _tableView.delegate = self;
    [self initDataSource];
    [self.view addSubview:_tableView];
    return self;
}


- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    if (self = [super initWithCoder:aDecoder]) {
        [self initDataSource];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];

    //去掉多余的分割线
    UITableView *tableView = self.tableView;
    UIView *view = [[UIView alloc] init];
    view.backgroundColor = [UIColor clearColor];
    [tableView setTableFooterView:view];
    [tableView setTableHeaderView:view];


    //设置分割线的风格
    /*self.tableViewCategory.separatorStyle = UITableViewCellSeparatorStyleSingleLine;
    self.tableViewCategory.separatorColor = [UIColor clearColor];
    self.tableViewList.separatorStyle = UITableViewCellSeparatorStyleSingleLine;
    self.tableViewList.separatorColor = [UIColor clearColor];*/
}


- (void)viewDidLayoutSubviews {
    [super viewDidLayoutSubviews];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];

}

#pragma mark - Table view data source

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    return nil;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
#warning Incomplete implementation, return the number of sections
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete implementation, return the number of rows
    return 0;
}

@end
