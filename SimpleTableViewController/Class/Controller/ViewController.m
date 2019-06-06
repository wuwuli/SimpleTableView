//
//  ViewController.m
//  SimpleTableViewController
//
//  Created by 吴紫颖 on 2019/5/30.
//  Copyright © 2019 吴紫颖. All rights reserved.
//

#import "ViewController.h"

#import "MainView.h"

#import "MainViewModel.h"

#import <Masonry.h>

@interface ViewController ()<MainViewDelegate>

@property (nonatomic, strong) MainView *mainView;
@property (nonatomic, strong) MainViewModel *mainViewModel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self setupSubViews];
    
    [self.mainViewModel loadTableDatas];
}

#pragma mark - MainViewDelegate
- (void)tableView:(UITableView *)tableView checkCell:(NSInteger)index {
    
}

- (void)setupSubViews {
    
    [self.view addSubview:self.mainView];
    [self.mainView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.view);
    }];
    
}

#pragma mark - Setter & Getter
- (MainView *)mainView {
    if (!_mainView) {
        _mainView = [[MainView alloc] initWithDelegate:self viewModel:self.mainViewModel];
    }
    return _mainView;
}

- (MainViewModel *)mainViewModel {
    if (!_mainViewModel) {
        _mainViewModel = [[MainViewModel alloc] init];
    }
    return _mainViewModel;
}

@end
