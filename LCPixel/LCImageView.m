//
//  LCImageView.m
//  LCPixel
//
//  Created by licong on 16/3/25.
//  Copyright © 2016年 Sean Lee. All rights reserved.
//

#import "LCImageView.h"
#import <objc/runtime.h>

const char kZYProcessedImage;


@implementation LCImageView


- (void)layoutSubviews{
    [super layoutSubviews];
    
    //layoutSubviews执行说明一点这个时候 imageView已经实例化好了，这里本来是修改布局的地方，core Graphics绘制前提是imageView已经存在且内存绘制好了。
    
//    [self zy_cornerRadiusWithImage:[UIImage imageNamed:@"test"] cornerRadius:100 rectCornerType:UIRectCornerAllCorners];

    [self zy_cornerRadiusWithImage:[UIImage imageNamed:@"test"] cornerRadius:100 rectCornerType:UIRectCornerAllCorners backgroundColor:[UIColor whiteColor]];
}

- (void)zy_cornerRadiusWithImage:(UIImage *)image cornerRadius:(CGFloat)cornerRadius rectCornerType:(UIRectCorner)rectCornerType {
    CGSize size = self.bounds.size;
    CGFloat scale = [UIScreen mainScreen].scale;
    CGSize cornerRadii = CGSizeMake(cornerRadius, cornerRadius);
    
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        UIGraphicsBeginImageContextWithOptions(size, NO, scale);
        if (nil == UIGraphicsGetCurrentContext()) {
            return;
        }
        UIBezierPath *cornerPath = [UIBezierPath bezierPathWithRoundedRect:self.bounds byRoundingCorners:rectCornerType cornerRadii:cornerRadii];
        [cornerPath addClip];
        [image drawInRect:self.bounds];
        UIImage *processedImage = UIGraphicsGetImageFromCurrentImageContext();
        UIGraphicsEndImageContext();
        
        dispatch_async(dispatch_get_main_queue(), ^{
            objc_setAssociatedObject(processedImage, &kZYProcessedImage, @(1), OBJC_ASSOCIATION_RETAIN_NONATOMIC);
            self.image = processedImage;
        });
    });
}

- (void)zy_cornerRadiusWithImage:(UIImage *)image cornerRadius:(CGFloat)cornerRadius rectCornerType:(UIRectCorner)rectCornerType backgroundColor:(UIColor *)backgroundColor {
    CGSize size = self.bounds.size;
    CGFloat scale = [UIScreen mainScreen].scale;
    CGSize cornerRadii = CGSizeMake(cornerRadius, cornerRadius);
    
    //绘图可以是在子线程，但是绘制完成需要在主线程装载，不这么做当前上下文会出问题会有log，但是仍然能够绘制圆角
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        UIGraphicsBeginImageContextWithOptions(size, YES, scale);
        if (nil == UIGraphicsGetCurrentContext()) {
            return;
        }
        UIBezierPath *cornerPath = [UIBezierPath bezierPathWithRoundedRect:self.bounds byRoundingCorners:rectCornerType cornerRadii:cornerRadii];
        UIBezierPath *backgroundRect = [UIBezierPath bezierPathWithRect:self.bounds];
        [backgroundColor setFill];
        [backgroundRect fill];
        [cornerPath addClip];
        [image drawInRect:self.bounds];
        UIImage *processedImage = UIGraphicsGetImageFromCurrentImageContext();
        UIGraphicsEndImageContext();
        
        dispatch_async(dispatch_get_main_queue(), ^{
            objc_setAssociatedObject(processedImage, &kZYProcessedImage, @(1), OBJC_ASSOCIATION_RETAIN_NONATOMIC);
            self.image = processedImage;
        });
    });
}

@end
