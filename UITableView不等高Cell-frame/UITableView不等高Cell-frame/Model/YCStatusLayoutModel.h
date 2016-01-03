//
//  YCStatusLayoutModel.h
//  UITableView不等高Cell-frame
//
//  Created by 温玉超 on 16/1/3.
//  Copyright © 2016年 温玉超. All rights reserved.
//

#import "YCStatusModel.h"

@interface YCStatusLayoutModel : YCStatusModel

@property (nonatomic, assign) CGRect iconImageViewFrame;
@property (nonatomic, assign) CGRect nameLabelFrame;
@property (nonatomic, assign) CGRect textLabelFrame;
@property (nonatomic, assign) CGFloat cellHeight;

@end
