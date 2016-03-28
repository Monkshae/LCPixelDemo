//
//  UIView+AddCornerRadius.h
//  LCPixel
//
//  Created by licong on 16/3/24.
//  Copyright © 2016年 Sean Lee. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (AddCornerRadius)


- (void)lc_addCorner:(CGFloat)radius;

- (void)lc_addCorner:(CGFloat)radius borderWidth:(CGFloat)borderWidth backgroundColor:(UIColor *)backgroundColor borderColor:(UIColor *)borderColor;

- (UIImage *)lc_drawRectWithRoundedCorner:(CGFloat)radius borderWidth:(CGFloat)borderWidth backgroundColor:(UIColor *)backgroundColor borderColor:(UIColor *)borderColor;

- (void)lc_setCornerAnyPositionByRoundingCorners:(UIRectCorner)corners cornerRadii:(CGSize)cornerRadii;

@end
