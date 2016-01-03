//
//  YCStatusModel.h
//  UITableView不等高Cell-frame
//
//  Created by 温玉超 on 16/1/2.
//  Copyright © 2016年 温玉超. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface YCStatusModel : NSObject

@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *icon;
@property (nonatomic, copy) NSString *text;

- (instancetype)initWithDict:(NSDictionary *)dict;
+ (instancetype)statusModelWithDict:(NSDictionary *)dict;
@end
