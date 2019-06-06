//
//  MainView.h
//  SimpleTableViewController
//
//  Created by 吴紫颖 on 2019/5/30.
//  Copyright © 2019 吴紫颖. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MainViewModel;

NS_ASSUME_NONNULL_BEGIN

@protocol MainViewDelegate <NSObject>

- (void)tableView:(UITableView *)tableView checkCell:(NSInteger)index;

@end

@interface MainView : UIView

@property (nonatomic, weak) id<MainViewDelegate> delegate;

@property (nonatomic, strong) MainViewModel *mainViewModel;


- (instancetype)initWithDelegate:(id)delegate viewModel:(MainViewModel *)viewModel;

@end

NS_ASSUME_NONNULL_END
