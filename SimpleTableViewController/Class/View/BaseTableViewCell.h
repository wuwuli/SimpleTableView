//
//  BaseTableViewCell.h
//  Toilet
//
//  Created by 吴紫颖 on 2019/3/14.
//  Copyright © 2019 吴紫颖. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface BaseTableViewCell : UITableViewCell

+ (instancetype)cellWithTableView:(UITableView *)tableView;
+ (instancetype)cellWithTableNibView:(UITableView *)tableView;
- (void)setupCell;
- (void)setupSubViews;
- (void)setViewWithModel:(id)model;

@end

NS_ASSUME_NONNULL_END
