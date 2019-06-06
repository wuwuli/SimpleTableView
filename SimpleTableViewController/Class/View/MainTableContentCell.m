//
//  MainTableContentCell.m
//  SimpleTableViewController
//
//  Created by 吴紫颖 on 2019/6/6.
//  Copyright © 2019 吴紫颖. All rights reserved.
//

#import "MainTableContentCell.h"

@interface MainTableContentCell ()

@property (nonatomic, strong) UILabel *labelTitle;
@property (nonatomic, strong) UILabel *labelSubTitle;

@end

@implementation MainTableContentCell

#pragma mark - Super Class
- (void)setupSubViews {
    
    UIView *contentView = [UIView viewWithColor:[UIColor whiteColor]];
    [self.contentView addSubview:contentView];
    [contentView makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(0);
        make.top.bottom.equalTo(0);
        make.right.equalTo(0);
    }];
    UIImageView *imageViewIcon = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"ic_home_clossstool_a"]];
    [contentView addSubview:imageViewIcon];
    [imageViewIcon makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(14);
        make.width.height.equalTo(39);
        make.centerY.equalTo(0);
    }];
    self.labelTitle = [UILabel labelWithText:@"A马桶" textColor:kRGBAlpha(102, 102, 102, 1) font:[UIFont systemFontOfSize:14]];
    [contentView addSubview:self.labelTitle];
    [self.labelTitle makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(imageViewIcon.mas_right).offset(12);
        make.top.equalTo(12);
    }];
    
    self.labelSubTitle = [UILabel labelWithText:@"在线" textColor:kRGBAlpha(117, 241, 137, 1) font:[UIFont systemFontOfSize:12]];
    [contentView addSubview:self.labelSubTitle];
    [self.labelSubTitle makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.labelTitle);
        make.bottom.equalTo(-11);
    }];
    
    UIView *lineView = [UIView viewWithColor:kRGBAlpha(201, 201, 201, 1)];
    [contentView addSubview:lineView];
    [lineView makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.equalTo(0);
        make.bottom.equalTo(0);
        make.height.equalTo(0.5);
    }];
    
    UIImageView *imageViewNext = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"ic_home_next"]];
    [contentView addSubview:imageViewNext];
    [imageViewNext makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(-16);
        make.centerY.equalTo(0);
        make.size.equalTo(CGSizeMake(6, 11));
    }];
}

@end
