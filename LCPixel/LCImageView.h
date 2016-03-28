//
//  LCImageView.h
//  LCPixel
//
//  Created by licong on 16/3/25.
//  Copyright © 2016年 Sean Lee. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LCImageView : UIImageView

- (void)zy_cornerRadiusWithImage:(UIImage *)image cornerRadius:(CGFloat)cornerRadius rectCornerType:(UIRectCorner)rectCornerType;

- (void)zy_cornerRadiusWithImage:(UIImage *)image cornerRadius:(CGFloat)cornerRadius rectCornerType:(UIRectCorner)rectCornerType backgroundColor:(UIColor *)backgroundColor;

@end
