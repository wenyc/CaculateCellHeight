//
//  YCStatusLayoutModel.m
//  UITableView不等高Cell-frame
//
//  Created by 温玉超 on 16/1/3.
//  Copyright © 2016年 温玉超. All rights reserved.
//

#import "YCStatusLayoutModel.h"

@implementation YCStatusLayoutModel

- (CGFloat)cellHeight {
    if (_cellHeight == 0) {
        
        CGFloat topMargin = 5;
        CGFloat leftMargin = 10;
        CGFloat padding = 5;
        
        CGFloat iconX = leftMargin;
        CGFloat iconY = topMargin;
        CGFloat iconWH = 50.f;
        self.iconImageViewFrame = CGRectMake(iconX, iconY, iconWH, iconWH);
        
        CGFloat nameLabelX = CGRectGetMaxX(self.iconImageViewFrame) + padding;
        
        NSDictionary *nameAttrs = @{NSFontAttributeName : [UIFont systemFontOfSize:17]};
        CGSize nameSize = [self.name sizeWithAttributes:nameAttrs];
        CGFloat nameLabelY = (iconWH - nameSize.height) / 2 + iconY;
        self.nameLabelFrame = CGRectMake(nameLabelX, nameLabelY, nameSize.width, nameSize.height);
        
        CGFloat textLabelX = iconX;
        CGFloat textLabelY = CGRectGetMaxY(self.iconImageViewFrame) + padding;
        CGFloat textLabelW = [UIScreen mainScreen].bounds.size.width - 2 * leftMargin;
        CGSize textMaxSize = CGSizeMake(textLabelW, MAXFLOAT);
        NSDictionary *textAttrs = @{NSFontAttributeName : [UIFont systemFontOfSize:14]};
        CGFloat textLabelH = [self.text boundingRectWithSize:textMaxSize options:NSStringDrawingUsesLineFragmentOrigin attributes:textAttrs context:nil].size.height;
        self.textLabelFrame = CGRectMake(textLabelX, textLabelY, textLabelW, textLabelH);
        
        _cellHeight = CGRectGetMaxY(self.textLabelFrame) + padding;
    }
    return _cellHeight;
}

@end
