//
//  UIImageView+AddCornerRadius.h
//  LCPixel
//
//  Created by licong on 16/3/24.
//  Copyright © 2016年 Sean Lee. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImageView (AddCornerRadius)

- (void)lc_addImageViewCorner:(CGFloat)radius;

- (UIImage *)lc_drawRectWithRoundedCorner:(CGFloat)radius sizetoFit:(CGSize)sizetoFit;

//- (void)zy_cornerRadiusWithImage:(UIImage *)image cornerRadius:(CGFloat)cornerRadius rectCornerType:(UIRectCorner)rectCornerType;
@end
