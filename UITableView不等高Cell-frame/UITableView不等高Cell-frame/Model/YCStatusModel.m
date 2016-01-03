//
//  YCStatusModel.m
//  UITableView不等高Cell-frame
//
//  Created by 温玉超 on 16/1/2.
//  Copyright © 2016年 温玉超. All rights reserved.
//

#import "YCStatusModel.h"

@implementation YCStatusModel

- (instancetype)initWithDict:(NSDictionary *)dict {
    if (self = [super init]) {
        self.name = dict[@"name"];
        self.icon = dict[@"icon"];
        self.text = dict[@"text"];
    }
    return self;
}

+ (instancetype)statusModelWithDict:(NSDictionary *)dict {
    return [[self alloc] initWithDict:dict];
}

@end
