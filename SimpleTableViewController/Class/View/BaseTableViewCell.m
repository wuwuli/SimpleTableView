//
//  BaseTableViewCell.m
//  Toilet
//
//  Created by 吴紫颖 on 2019/3/14.
//  Copyright © 2019 吴紫颖. All rights reserved.
//

#import "BaseTableViewCell.h"

@implementation BaseTableViewCell

+ (instancetype)cellWithTableView:(UITableView *)tableView {
    NSString *reuseId = NSStringFromClass([self class]);
    id cell = [tableView dequeueReusableCellWithIdentifier:reuseId];
    if (!cell) {
        cell = [[self alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:reuseId];
        [cell setSelectionStyle:UITableViewCellSelectionStyleNone];
    }
    return cell;
}

+ (instancetype)cellWithTableNibView:(UITableView *)tableView {
    NSString *reuseId = NSStringFromClass([self class]);
    
    id cell = [tableView dequeueReusableCellWithIdentifier:reuseId];
    if (!cell) {
        cell = [[[NSBundle mainBundle] loadNibNamed:NSStringFromClass([self class]) owner:self options:nil] lastObject];
        [cell setupCell];
        [cell setupSubViews];
        [cell setSelectionStyle:UITableViewCellSelectionStyleNone];
    }
    return cell;
}

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self setupCell];
        [self setupSubViews];
    }
    return self;
}

// 子类重写该方法，设置Cell样式
- (void)setupCell
{
    
}

// 子类重写该方法，设置View
- (void)setupSubViews
{
    
}


// 子类重写该方法，设置View数据
- (void)setViewWithModel:(id)model
{
    
}

@end
