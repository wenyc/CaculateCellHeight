//
//  YCStatusCell.m
//  UITableView不等高Cell-frame
//
//  Created by 温玉超 on 16/1/2.
//  Copyright © 2016年 温玉超. All rights reserved.
//

#import "YCStatusCell.h"
#import "YCStatusLayoutModel.h"

#define YCDetailInfoLabelFontSize [UIFont systemFontOfSize:14]
#define YCNameLabelFontSize [UIFont systemFontOfSize:17];
@interface YCStatusCell()

@property (nonatomic, weak) UIImageView *iconImageView;
@property (nonatomic, weak) UILabel *nameLabel;
@property (nonatomic, weak) UILabel *detailInfoLabel;
@property (nonatomic, weak) UIView *lineView;
@end

@implementation YCStatusCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {

        UIImageView *iconImageView = [[UIImageView alloc] init];
        self.iconImageView = iconImageView;
        [self.contentView addSubview:iconImageView];
        
        UILabel *nameLabel = [[UILabel alloc] init];
        nameLabel.font = [UIFont systemFontOfSize:17];
        self.nameLabel = nameLabel;
        
        [self.contentView addSubview:nameLabel];
        
        UILabel *detailInfoLabel = [[UILabel alloc] init];
        detailInfoLabel.numberOfLines = 0;
        detailInfoLabel.font = [UIFont systemFontOfSize:14];
        self.detailInfoLabel = detailInfoLabel;
        [self.contentView addSubview:detailInfoLabel];
        
        UIView *lineView = [[UIView alloc] init];
        lineView.backgroundColor = [UIColor grayColor];
        lineView.alpha = 0.5f;
        self.lineView = lineView;
        [self.contentView addSubview:lineView];
    }
    return self;
}

- (void)layoutSubviews {
    [super layoutSubviews];
    self.iconImageView.frame = self.statusLayoutModel.iconImageViewFrame;
    self.nameLabel.frame = self.statusLayoutModel.nameLabelFrame;
    self.detailInfoLabel.frame = self.statusLayoutModel.textLabelFrame;
    self.lineView.frame = CGRectMake(0, CGRectGetMaxY(self.statusLayoutModel.textLabelFrame) + 3, CGRectGetWidth(self.frame), 1);
}

- (void)setStatusLayoutModel:(YCStatusLayoutModel *)statusLayoutModel {
    _statusLayoutModel = statusLayoutModel;
    
    self.iconImageView.image = [UIImage imageNamed:statusLayoutModel.icon];
    self.nameLabel.text = statusLayoutModel.name;
    self.detailInfoLabel.text = statusLayoutModel.text;
}
@end
