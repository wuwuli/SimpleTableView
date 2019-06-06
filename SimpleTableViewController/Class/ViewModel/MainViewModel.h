//
//  MainViewModel.h
//  SimpleTableViewController
//
//  Created by 吴紫颖 on 2019/5/30.
//  Copyright © 2019 吴紫颖. All rights reserved.
//

#import <Foundation/Foundation.h>

@class MainTableModel;

NS_ASSUME_NONNULL_BEGIN

@interface MainViewModel : NSObject

@property (nonatomic, strong) NSMutableArray<MainTableModel *> *arrayTableDatas;

- (void)loadTableDatas;

@end

NS_ASSUME_NONNULL_END
