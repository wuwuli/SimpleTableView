//
//  UIView+Category.m
//  SimpleTableViewController
//
//  Created by 吴紫颖 on 2019/6/6.
//  Copyright © 2019 吴紫颖. All rights reserved.
//

#import "UIView+Category.h"

@implementation UIView (Category)

//设置阴影
- (void)setViewLayerShadow {
    self.layer.cornerRadius = 3;
    self.layer.shadowColor = kRGBAlpha(71, 21, 27, 0.25).CGColor;
    self.layer.shadowOffset = CGSizeMake(0, 0);
    self.layer.shadowOpacity = 1;
    self.layer.shadowRadius = 3;
}

@end
