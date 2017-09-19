//
//  DTableViewData.h
//  DTableViewDemo
//
//  Created by 黄铭达 on 2017/4/25.
//  Copyright © 2017年 黄铭达. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>


/**
 section key
 */

#define HeaderTitle  @"headerTitle"
#define FooterTitle  @"footerTitle"
#define HeaderHeight @"headerHeight"  //默认 20
#define FooterHeight @"footerHeight"  //默认 5
#define RowData      @"rows"


/**
 row key
 */

#define Title             @"title"         //
#define DetailTitle       @"detailTitle"   // 这三个使用默认cell才有效
#define ImageName         @"imageName"     //

#define CellClass         @"cellClass"
#define CellAction        @"cellAction"
#define Data              @"data"          //数据用这个传
#define RowHeight         @"rowHeight"     //默认 44
#define SeparatedLeftEdge @"separatedLeftEdge" //分割线距左边的距离


/**
 other key
 */

#define Disable           @"disable"       //cell不可见
#define ShowAccessory     @"accessory"     //cell显示 '>'
#define ForbidSelect      @"forbidSelect"  //cell禁止点击
#define ShowSelectedStyle @"selectedStyle" //选中样式

@interface DTableSection : NSObject

//section 头部标题
@property (nonatomic, copy) NSString *headerTitle;

//section 尾部标题
@property (nonatomic, copy) NSString *footerTitle;

//section 头部高度
@property (nonatomic, assign) CGFloat headerHeight;

//section 尾部标题
@property (nonatomic, assign) CGFloat footerHeight;

//section
@property (nonatomic, strong) NSArray *rows;


- (instancetype)initWithDic:(NSDictionary *)dic;

//初始化数据
+ (NSArray *)sectionsWithData:(NSArray *)data;

@end

@interface DTableRow : NSObject

//图片名称
@property (nonatomic, copy) NSString *imageName;

//标题
@property (nonatomic, strong) NSString *title;

//详细  以上三个只有在使用系统的cell下生效
@property (nonatomic, copy) NSString *detailTitle;

//自定义cell名称
@property (nonatomic, copy) NSString *cellClassName;

//cell的点击事件名
@property (nonatomic, copy) NSString *cellActionName;

//cell行高
@property (nonatomic, assign) CGFloat rowHeight;

//分隔线距离左边的距离
@property (nonatomic, assign) CGFloat sepLeftEdge;

//是否显示 '>'箭头
@property (nonatomic, assign) BOOL showAccessory;

//是否能被选中
@property (nonatomic, assign) BOOL forbidSelected;

//选中时的样式
@property (nonatomic, assign) BOOL showSelectedStyle;

//数据
@property (nonatomic, strong) id data;

- (instancetype)initWithDict:(NSDictionary *)dict;

+ (NSArray *)rowsWithData:(NSArray *)data;

@end
