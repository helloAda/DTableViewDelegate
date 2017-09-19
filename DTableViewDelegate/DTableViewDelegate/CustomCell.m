//
//  CustomCell.m
//  DTableViewDelegate
//
//  Created by 黄铭达 on 2017/9/19.
//  Copyright © 2017年 黄铭达. All rights reserved.
//

#import "CustomCell.h"

#import "UIView+DSCategory.h"

#define D_SuppressPerformSelectorLeakWarning(Stuff) \
do { \
_Pragma("clang diagnostic push") \
_Pragma("clang diagnostic ignored \"-Warc-performSelector-leaks\"") \
Stuff; \
_Pragma("clang diagnostic pop") \
} while (0)

@interface CustomCell ()

@property (nonatomic, strong) UIImageView *avatar;//头像
@property (nonatomic, strong) UILabel *nickName;//昵称
@property (nonatomic, strong) UILabel *accountID;//账号
@property (nonatomic, strong) UILabel *location;//位置

@end

@implementation CustomCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        _avatar = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 80, 80)];
        [self addSubview:_avatar];
        _nickName = [[UILabel alloc] initWithFrame:CGRectZero];
        _nickName.font = [UIFont boldSystemFontOfSize:18.f];
        [self addSubview:_nickName];
        
        _accountID = [[UILabel alloc] initWithFrame:CGRectZero];
        _accountID.font = [UIFont systemFontOfSize:14];
        _accountID.textColor = [UIColor lightGrayColor];
        [self addSubview:_accountID];
        
        _location = [[UILabel alloc] initWithFrame:CGRectZero];
        _location.font = [UIFont systemFontOfSize:14];
        _location.textColor = [UIColor lightGrayColor];
        [self addSubview:_location];
        
        UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(action)];
        [self addGestureRecognizer:tap];
        
    }
    return self;
}

- (void)refreshData:(DTableRow *)rowData tableView:(UITableView *)tableView {
    
    
    _avatar.image = [UIImage imageNamed:[rowData.data objectForKey:@"iamge"]];
    _accountID.text = [rowData.data objectForKey:@"account"];
    _location.text = [rowData.data objectForKey:@"location"];
    _nickName.text = [rowData.data objectForKey:@"nickName"];
    
    [_accountID sizeToFit];
    [_location sizeToFit];
    [_nickName sizeToFit];
    
}


#define AvatarLeft 30
#define TitleAndAvatarSpaceing 20
#define TitlePadding 5

- (void)layoutSubviews {
    [super layoutSubviews];
    
    _avatar.left = AvatarLeft;
    _avatar.centerY = self.height *.5f;
    _nickName.left = self.avatar.right + TitleAndAvatarSpaceing;
    _nickName.top = _avatar.top;
    _accountID.left = self.avatar.right + TitleAndAvatarSpaceing;
    _accountID.top = _nickName.bottom + TitlePadding;
    _location.left = self.avatar.right + TitleAndAvatarSpaceing;
    _location.top = _accountID.bottom + TitlePadding;
    
}


//如果不需要整个cell的点击事件，需要局部的点击事件 可以类似这样，将数据传回去。。
- (void)action{
    NSDictionary *dic = @{@"key": @"value"};
    UIViewController *vc = [self ds_viewController];
    SEL sel = NSSelectorFromString(@"actionName:");
    D_SuppressPerformSelectorLeakWarning([vc performSelector:sel withObject:dic]);
}

@end
