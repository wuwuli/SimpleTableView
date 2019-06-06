//
//  MainTableViewCell.h
//  SimpleTableViewController
//
//  Created by 吴紫颖 on 2019/5/30.
//  Copyright © 2019 吴紫颖. All rights reserved.
//

#import "BaseTableViewCell.h"

NS_ASSUME_NONNULL_BEGIN

@interface MainTableViewCell : BaseTableViewCell

@property (nonatomic, copy) void (^onUpdateCellHeight)(CGFloat height);

@property (nonatomic, copy) void (^onSelectCell)(NSInteger index);

- (void)setupSubViews;

@end

NS_ASSUME_NONNULL_END
