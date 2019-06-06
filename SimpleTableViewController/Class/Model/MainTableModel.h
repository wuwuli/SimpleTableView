//
//  MainTableModel.h
//  SimpleTableViewController
//
//  Created by 吴紫颖 on 2019/5/30.
//  Copyright © 2019 吴紫颖. All rights reserved.
//

#import <Foundation/Foundation.h>

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSInteger, MainTableModelType) {
    MainTableModelTypeFold
};

@interface MainTableModel : NSObject

@property (nonatomic, assign) MainTableModelType tableType;
@property (nonatomic, copy) NSString *tableTitle;
@property (nonatomic, strong) id tableContent;
@property (nonatomic, assign) CGFloat tableHeight;

-(instancetype)initWithTableType:(MainTableModelType)tableType;

-(instancetype)initWithTableType:(MainTableModelType)tableType tableTitle:(nullable NSString *)tableTitle;

@end

NS_ASSUME_NONNULL_END
