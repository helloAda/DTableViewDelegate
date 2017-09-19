//
//  CustomCell.h
//  DTableViewDelegate
//
//  Created by 黄铭达 on 2017/9/19.
//  Copyright © 2017年 黄铭达. All rights reserved.
//

#import <UIKit/UIKit.h>

// 1 导入
#import "DTableViewCell.h"
#import "DTableViewData.h"
@interface CustomCell : UITableViewCell <DTableViewCell> // 2 遵守protocol

@end
