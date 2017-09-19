//
//  DTableViewCell.h
//  DTableViewDemo
//
//  Created by 黄铭达 on 2017/4/25.
//  Copyright © 2017年 黄铭达. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@class DTableRow;
@protocol DTableViewCell <NSObject>

//初始化方法
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier;

@optional

//数据传入用这个
- (void)refreshData:(DTableRow *)rowData tableView:(UITableView *)tableView;


@end

