//
//  ViewController.m
//  iOS-layout-oc
//
//  Created by 叶铭 on 2018/6/30.
//  Copyright © 2018年 叶铭. All rights reserved.
//

#import "ViewController.h"
#import "DetailLayoutTest.h"
#import "ListLayoutTest.h"
#import "TabBarTest.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)onListTestTouch:(id)sender {
    [self presentViewController:[[ListLayoutTest alloc]init] animated:true completion:^(void){

    }];
}

- (IBAction)onDetailTestTouch:(id)sender {
    [self presentViewController:[[DetailLayoutTest alloc]init] animated:true completion:^(void){

    }];
}

- (IBAction)onTabBarTest:(id)sender {
    [self presentViewController:[[TabBarTest alloc]init] animated:true completion:^(void){

    }];
}
@end
