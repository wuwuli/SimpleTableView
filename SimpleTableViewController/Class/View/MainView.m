//
//  MainView.m
//  SimpleTableViewController
//
//  Created by 吴紫颖 on 2019/5/30.
//  Copyright © 2019 吴紫颖. All rights reserved.
//

#import "MainView.h"
#import "MainTableViewCell.h"

#import "MainViewModel.h"

#import "MainTableModel.h"

#import <Masonry.h>

@interface MainView ()<UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) UITableView *mainTableView;

@end

@implementation MainView

#pragma mark - Life Cycle
- (instancetype)initWithDelegate:(id)delegate viewModel:(MainViewModel *)viewModel {
    
    self = [super init];
    
    if (self) {
        [self setupSubViews];
        
        _delegate = delegate;
        _mainViewModel = viewModel;
    }
    
    return self;
}

#pragma mark - UITableViewDelegate
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    if (self.mainViewModel.arrayTableDatas) {
        return [self.mainViewModel.arrayTableDatas count];
    }
    
    return 0;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    if (section < [self.mainViewModel.arrayTableDatas count]) {
        return 1;
    }
    return 0;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    if (indexPath.section < [self.mainViewModel.arrayTableDatas count]) {
        MainTableModel *tableModel = [self.mainViewModel arrayTableDatas][indexPath.section];
        
        return tableModel.tableHeight;
    }
    
    return 0;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    BaseTableViewCell *cell = [BaseTableViewCell cellWithTableView:tableView];
    
    if (indexPath.section < [self.mainViewModel.arrayTableDatas count]) {
        MainTableModel *tableModel = [self.mainViewModel arrayTableDatas][indexPath.section];
        
        cell = [MainTableViewCell cellWithTableView:tableView];
        
        WeakSelf
        [(MainTableViewCell *)cell setOnUpdateCellHeight:^(CGFloat height) {
            //更新cell展开高度
            tableModel.tableHeight = height + 70;
            [weakSelf.mainTableView beginUpdates];
            [weakSelf.mainTableView endUpdates];
        }];
        
        [(MainTableViewCell *)cell setOnSelectCell:^(NSInteger index) {
            //选择cell
            if (weakSelf.delegate && [weakSelf.delegate respondsToSelector:@selector(tableView:checkCell:)]) {
                [weakSelf.delegate tableView:tableView checkCell:nil];
            }
        }];
        
        [cell setViewWithModel:tableModel.tableContent];
    }
    
    return cell;
}

#pragma mark - Private Method
- (void)setupSubViews {
    self.mainTableView = [[UITableView alloc] initWithFrame:self.bounds style:UITableViewStyleGrouped];
    self.mainTableView.delegate = self;
    self.mainTableView.dataSource = self;
    self.mainTableView.tableFooterView = [UIView new];
    self.mainTableView.backgroundColor = [UIColor clearColor];
    self.mainTableView.separatorColor = [UIColor clearColor];
    self.mainTableView.showsVerticalScrollIndicator = NO;
    self.mainTableView.estimatedRowHeight = 0;
    self.mainTableView.estimatedSectionFooterHeight = 0;
    self.mainTableView.estimatedSectionHeaderHeight = 0;
    [self addSubview:self.mainTableView];
    [self.mainTableView mas_makeConstraints:^(MASConstraintMaker *make) {
        if (@available(iOS 11.0, *)) {
            make.top.equalTo(self.mas_safeAreaLayoutGuideTop);
            make.left.equalTo(self.mas_safeAreaLayoutGuideLeft);
            make.bottom.equalTo(self.mas_safeAreaLayoutGuideBottom);
            make.right.equalTo(self.mas_safeAreaLayoutGuideRight);
            
        } else {
            make.edges.equalTo(self);
        }
    }];
    
}


@end
