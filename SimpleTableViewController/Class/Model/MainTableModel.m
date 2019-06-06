//
//  MainTableModel.m
//  SimpleTableViewController
//
//  Created by 吴紫颖 on 2019/5/30.
//  Copyright © 2019 吴紫颖. All rights reserved.
//

#import "MainTableModel.h"

@implementation MainTableModel

- (instancetype)initWithTableType:(MainTableModelType)tableType {
    return [self initWithTableType:tableType tableTitle:nil];
}

- (instancetype)initWithTableType:(MainTableModelType)tableType tableTitle:(NSString *)tableTitle {
    self = [super init];
    if (self) {
        _tableType = tableType;
        _tableTitle = tableTitle;
        _tableHeight = 0;
    }
    
    return self;
}

@end
