//
//  ViewController.m
//  UITableView不等高Cell-frame
//
//  Created by 温玉超 on 16/1/2.
//  Copyright © 2016年 温玉超. All rights reserved.
//

#import "ViewController.h"
#import "YCStatusCell.h"
#import "YCStatusModel.h"
#import "YCStatusLayoutModel.h"

static NSString *const kYCStatusCellID = @"YCStatusCell";
@interface ViewController ()

@property (nonatomic, strong) NSMutableArray *statusModels;

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    self.tableView.estimatedRowHeight = 100;
    [self.tableView registerClass:[YCStatusCell class] forCellReuseIdentifier:kYCStatusCellID];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.statusModels.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    YCStatusCell *cell = [tableView dequeueReusableCellWithIdentifier:kYCStatusCellID];
    cell.statusLayoutModel = self.statusModels[indexPath.row];
    return cell;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    YCStatusLayoutModel *statusLayoutModel = self.statusModels[indexPath.row];
    return statusLayoutModel.cellHeight;

}

- (NSMutableArray *)statusModels {
    if (_statusModels == nil) {
        _statusModels = [NSMutableArray array];
        NSString *filePath = [[NSBundle mainBundle] pathForResource:@"status.plist" ofType:nil];
        NSArray *dictsArray = [NSArray arrayWithContentsOfFile:filePath];
        for (NSDictionary *dict in dictsArray) {
            [_statusModels addObject:[YCStatusLayoutModel statusModelWithDict:dict]];
        }
    }
    return _statusModels;
}
@end
