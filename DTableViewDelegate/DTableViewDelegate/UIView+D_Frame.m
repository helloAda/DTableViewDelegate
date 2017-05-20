//
//  UIView+D_Frame.m
//  DTableViewDemo
//
//  Created by 黄铭达 on 2017/5/18.
//  Copyright © 2017年 黄铭达. All rights reserved.
//

#import "UIView+D_Frame.h"

@implementation UIView (D_Frame)
- (CGFloat)D_left {
    return self.frame.origin.x;
}

//
- (void)setD_left:(CGFloat)x {
    CGRect frame = self.frame;
    frame.origin.x = x;
    self.frame = frame;
}


//
- (CGFloat)D_top {
    return self.frame.origin.y;
}


//
- (void)D_top:(CGFloat)y {
    CGRect frame = self.frame;
    frame.origin.y = y;
    self.frame = frame;
}


//
- (CGFloat)D_right {
    return self.frame.origin.x + self.frame.size.width;
}


//
- (void)setD_right:(CGFloat)right {
    CGRect frame = self.frame;
    frame.origin.x = right - frame.size.width;
    self.frame = frame;
}


//
- (CGFloat)D_bottom {
    return self.frame.origin.y + self.frame.size.height;
}


//
- (void)setD_bottom:(CGFloat)bottom {
    CGRect frame = self.frame;
    frame.origin.y = bottom - frame.size.height;
    self.frame = frame;
}


//
- (CGFloat)D_centerX {
    return self.center.x;
}


//
- (void)setD_centerX:(CGFloat)centerX {
    self.center = CGPointMake(centerX, self.center.y);
}


//
- (CGFloat)D_centerY {
    return self.center.y;
}


//
- (void)setD_centerY:(CGFloat)centerY {
    self.center = CGPointMake(self.center.x, centerY);
}


//
- (CGFloat)D_width {
    return self.frame.size.width;
}


//
- (void)setD_width:(CGFloat)width {
    CGRect frame = self.frame;
    frame.size.width = width;
    self.frame = frame;
}


//
- (CGFloat)D_height {
    return self.frame.size.height;
}


//
- (void)setD_height:(CGFloat)height {
    CGRect frame = self.frame;
    frame.size.height = height;
    self.frame = frame;
}
//
- (CGPoint)D_origin {
    return self.frame.origin;
}


//
- (void)setD_origin:(CGPoint)origin {
    CGRect frame = self.frame;
    frame.origin = origin;
    self.frame = frame;
}


//
- (CGSize)D_size {
    return self.frame.size;
}


//
- (void)setD_size:(CGSize)size {
    CGRect frame = self.frame;
    frame.size = size;
    self.frame = frame;
}


- (UIViewController *)D_ViewController {
    for (UIView *next = self ; next; next = next.superview) {
        UIResponder *nextResponder = [next nextResponder];
        if ([nextResponder isKindOfClass:[UIViewController class]]) {
            return (UIViewController*)nextResponder;
        }
    }
    return nil;
}

@end
