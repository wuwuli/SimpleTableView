//
//  UIButton+Category.h
//  iShop
//
//  Created by JY on 2018/6/7.
//  Copyright © 2018年 帝辰科技. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (Category)

/**
 *  设置文字在左，图片在右
 */
- (void)setTitleLeftSpace:(CGFloat)space;

/**
 *  设置文字在右，图片在左
 */
- (void)setTitleRightSpace:(CGFloat)space;

/**
 *  设置文字在上，图片在下
 */
- (void)setTitleUpSpace:(CGFloat)space;

/**
 *  设置文字在下，图片在上
 */
- (void)setTitleDownSpace:(CGFloat)space;

@end
