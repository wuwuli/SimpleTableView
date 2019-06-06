//
//  MainTableViewCell.m
//  SimpleTableViewController
//
//  Created by 吴紫颖 on 2019/5/30.
//  Copyright © 2019 吴紫颖. All rights reserved.
//

#import "MainTableViewCell.h"
#import "MainTableContentCell.h"

@interface MainTableViewCell ()<UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) UILabel *labelTitle;
@property (nonatomic, strong) UIButton *buttonOpen;

@property (nonatomic, strong) UITableView *mainTableView;

@property (nonatomic, copy) NSArray *arrayTableDatas;

@property (nonatomic, assign) BOOL isSelected;

@end

@implementation MainTableViewCell

#pragma mark - UITableViewDelegate
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.isSelected ? [self.arrayTableDatas count] : 0;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 84;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {

    MainTableContentCell *cell = [MainTableContentCell cellWithTableView:tableView];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    if (self.onSelectCell) {
        self.onSelectCell(indexPath.row);
    }
}

#pragma mark - Event Response
- (void)onBtnTappedEvent:(UIButton *)btn {
    btn.selected = !btn.selected;
    
    self.isSelected = btn.selected;
        
    self.mainTableView.height = btn.selected ? 84 * [self.arrayTableDatas count] : 0;
    
    if (self.onUpdateCellHeight) {
        self.onUpdateCellHeight(self.mainTableView.height);
    }
    
    [self.mainTableView reloadData];
}

#pragma mark - Private Method
- (void)setViewWithModel:(id)model {
    if (model && [model isKindOfClass:[NSArray class]]) {
        self.arrayTableDatas = model;
        
        [self.mainTableView reloadData];
    }
}

- (void)setupSubViews {
    
    self.backgroundColor = [UIColor clearColor];
    
    UIView *contentView = [[UIView alloc] init];
    contentView.backgroundColor = [UIColor whiteColor];
    [self.contentView addSubview:contentView];
    [contentView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(20);
        make.top.equalTo(0);
        make.bottom.equalTo(0);
        make.right.equalTo(-20);
    }];
    [contentView setViewLayerShadow];
    
    UIView *topView = [[UIView alloc] init];
    topView.backgroundColor = [UIColor whiteColor];
    [contentView addSubview:topView];
    [topView makeConstraints:^(MASConstraintMaker *make) {
        make.top.left.right.equalTo(0);
        make.height.equalTo(70);
    }];
    
    UIView *viewStyle = [[UIView alloc] init];
    viewStyle.backgroundColor = kRGBAlpha(120, 195, 255, 1);
    [topView addSubview:viewStyle];
    [viewStyle makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(14);
        make.centerY.equalTo(0);
        make.size.equalTo(CGSizeMake(4, 16));
    }];
    
    self.labelTitle = [[UILabel alloc] init];
    self.labelTitle.textColor = kRGBAlpha(102, 102, 102, 1);
    self.labelTitle.font = [UIFont systemFontOfSize:14];
    self.labelTitle.text = @"默认";
    [topView addSubview:self.labelTitle];
    [self.labelTitle makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(viewStyle.mas_right).offset(12);
        make.centerY.equalTo(0);
    }];
    
    self.buttonOpen = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.buttonOpen setTitle:@"展开" forState:UIControlStateNormal];
    [self.buttonOpen setTitle:@"收起" forState:UIControlStateSelected];
    [self.buttonOpen setTitleColor:kRGBAlpha(178, 178, 178, 1) forState:UIControlStateNormal];
    [self.buttonOpen.titleLabel setFont:[UIFont systemFontOfSize:11]];
    [self.buttonOpen addTarget:self action:@selector(onBtnTappedEvent:) forControlEvents:UIControlEventTouchUpInside];
    [self.buttonOpen setImage:[UIImage imageNamed:@"ic_home_open"] forState:UIControlStateNormal];
    [topView addSubview:self.buttonOpen];
    [self.buttonOpen makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(-14);
        make.size.equalTo(CGSizeMake(40, 15));
        make.centerY.equalTo(0);
    }];
    [self.buttonOpen setTitleRightSpace:5];
    
    [contentView addSubview:self.mainTableView];
    [self.mainTableView makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(topView.mas_bottom);
        make.left.right.bottom.equalTo(0);
    }];
}

#pragma mark - Setter & Getter
- (UITableView *)mainTableView {
    if (!_mainTableView) {
        _mainTableView = [[UITableView alloc] init];
        _mainTableView.delegate = self;
        _mainTableView.dataSource = self;
        _mainTableView.tableFooterView = [UIView new];
        _mainTableView.scrollEnabled = NO;
        _mainTableView.separatorColor = kRGBAlpha(0, 0, 0, 0.1);
    }
    
    return _mainTableView;
}

@end
