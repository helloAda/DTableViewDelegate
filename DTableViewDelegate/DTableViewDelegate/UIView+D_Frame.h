//
//  UIView+D_Frame.h
//  DTableViewDemo
//
//  Created by 黄铭达 on 2017/5/18.
//  Copyright © 2017年 黄铭达. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (D_Frame)

/**
 * Shortcut for frame.origin.x
 *
 * Sets frame.origin.x = left
 */
@property (nonatomic) CGFloat D_left;

/**
 * Shortcut for frame.origin.y
 *
 * Sets frame.origin.y = top
 */
@property (nonatomic) CGFloat D_top;

/**
 * Shortcut for frame.origin.x + frame.size.width
 *
 * Sets frame.origin.x = right - frame.size.width
 */
@property (nonatomic) CGFloat D_right;

/**
 * Shortcut for frame.origin.y + frame.size.height
 *
 * Sets frame.origin.y = bottom - frame.size.height
 */
@property (nonatomic) CGFloat D_bottom;

/**
 * Shortcut for frame.size.width
 *
 * Sets frame.size.width = width
 */
@property (nonatomic) CGFloat D_width;

/**
 * Shortcut for frame.size.height
 *
 * Sets frame.size.height = height
 */
@property (nonatomic) CGFloat D_height;

/**
 * Shortcut for center.x
 *
 * Sets center.x = centerX
 */
@property (nonatomic) CGFloat D_centerX;

/**
 * Shortcut for center.y
 *
 * Sets center.y = centerY
 */
@property (nonatomic) CGFloat D_centerY;

/**
 * Shortcut for frame.origin
 */
@property (nonatomic) CGPoint D_origin;

/**
 * Shortcut for frame.size
 */
@property (nonatomic) CGSize D_size;


//找到自己的VC
- (UIViewController *)D_ViewController;

@end
