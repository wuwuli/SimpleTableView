//
//  UIButton+Category.m
//  iShop
//
//  Created by JY on 2018/6/7.
//  Copyright © 2018年 帝辰科技. All rights reserved.
//

#import "UIButton+Category.h"

@implementation UIButton (Category)

- (void)setTitleLeftSpace:(CGFloat)space {
    CGSize imageSize = self.imageView.frame.size;
    self.titleEdgeInsets = UIEdgeInsetsMake(0.0, -(imageSize.width * 2 + space / 2.0), 0.0, 0.0);
    CGSize titleSize = self.titleLabel.frame.size;
    self.imageEdgeInsets = UIEdgeInsetsMake(0.0, 0.0, 0.0, -(titleSize.width * 2 + space / 2.0));
}

- (void)setTitleRightSpace:(CGFloat)space {
    self.titleEdgeInsets = UIEdgeInsetsMake(0.0, 0.0, 0.0, -space);
    self.imageEdgeInsets = UIEdgeInsetsMake(0.0, -space, 0.0, 0.0);
}

- (void)setTitleUpSpace:(CGFloat)space {
    CGSize imageSize = self.imageView.frame.size;
    self.titleEdgeInsets = UIEdgeInsetsMake(0.0, -imageSize.width, (imageSize.height + space / 2), 0.0);
    CGSize titleSize = self.titleLabel.frame.size;
    self.imageEdgeInsets = UIEdgeInsetsMake((titleSize.height + space / 2), 0.0, 0.0, -titleSize.width);
}

- (void)setTitleDownSpace:(CGFloat)space {
    CGSize imageSize = self.imageView.frame.size;
    self.titleEdgeInsets = UIEdgeInsetsMake(0.0, -imageSize.width, -(imageSize.height + space / 2), 0.0);
    CGSize titleSize = self.titleLabel.frame.size;
    self.imageEdgeInsets = UIEdgeInsetsMake(-(titleSize.height + space / 2), 0.0, 0.0, -titleSize.width);
}

@end
