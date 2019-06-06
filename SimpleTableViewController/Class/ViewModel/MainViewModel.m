//
//  MainViewModel.m
//  SimpleTableViewController
//
//  Created by 吴紫颖 on 2019/5/30.
//  Copyright © 2019 吴紫颖. All rights reserved.
//

#import "MainViewModel.h"

#import "MainTableModel.h"

@implementation MainViewModel

- (void)loadTableDatas {
    MainTableModel *tableModel0 = [[MainTableModel alloc] init];
    tableModel0.tableHeight = 70;
    
    MainTableModel *tableModel0_1 = [[MainTableModel alloc] init];
    MainTableModel *tableModel0_2 = [[MainTableModel alloc] init];
    MainTableModel *tableModel0_3 = [[MainTableModel alloc] init];
    MainTableModel *tableModel0_4 = [[MainTableModel alloc] init];
    tableModel0.tableContent = @[tableModel0_1, tableModel0_2, tableModel0_3, tableModel0_4];
    
    MainTableModel *tableModel1 = [[MainTableModel alloc] init];
    tableModel1.tableHeight = 70;
    
    MainTableModel *tableModel1_1 = [[MainTableModel alloc] init];
    MainTableModel *tableModel1_2 = [[MainTableModel alloc] init];
    MainTableModel *tableModel1_3 = [[MainTableModel alloc] init];
    MainTableModel *tableModel1_4 = [[MainTableModel alloc] init];
    tableModel1.tableContent = @[tableModel1_1, tableModel1_2, tableModel1_3, tableModel1_4];
    
    [self.arrayTableDatas addObjectsFromArray:@[tableModel0, tableModel1]];
}

#pragma mark - Setter & Getter
- (NSMutableArray<MainTableModel *> *)arrayTableDatas {
    if (!_arrayTableDatas) {
        _arrayTableDatas = [NSMutableArray array];
    }
    
    return _arrayTableDatas;
}

@end
