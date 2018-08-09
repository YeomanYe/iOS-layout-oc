//
// Created by 美德远健 on 2018/7/13.
// Copyright (c) 2018 叶铭. All rights reserved.
//

#import "OrderDictionary.h"


@implementation OrderDictionary {

}
- (NSArray *)allKeys {
    NSArray *keys = [super allKeys];
    NSArray *sortedArray = [keys sortedArrayUsingComparator:^NSComparisonResult(id obj1, id obj2){
        return [obj1 compare:obj2 options:NSNumericSearch];
    }];//由于allKeys返回的是无序数组，这里我们要排列它们的顺序
    return sortedArray;
}

- (NSArray *)allValues {
    NSArray *keys = [self allKeys];
    NSMutableArray *valArr = [[NSMutableArray alloc] init];
    for(int i=0,len=keys.count;i<len;i++){
        [valArr addObject:[self valueForKey:keys[i]]];
    }
    return [valArr copy];
}

@end