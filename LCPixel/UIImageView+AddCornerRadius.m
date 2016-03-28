//
//  UIImageView+AddCornerRadius.m
//  LCPixel
//
//  Created by licong on 16/3/24.
//  Copyright © 2016年 Sean Lee. All rights reserved.
//

#import "UIImageView+AddCornerRadius.h"

@implementation UIImageView (AddCornerRadius)

- (void)lc_addImageViewCorner:(CGFloat)radius{
    self.image = [self lc_drawRectWithRoundedCorner:radius sizetoFit:self.bounds.size];
}
- (UIImage *)lc_drawRectWithRoundedCorner:(CGFloat)radius sizetoFit:(CGSize)sizetoFit{
   
    CGRect rect = CGRectMake(0, 0, sizetoFit.width, sizetoFit.height);
    UIGraphicsBeginImageContextWithOptions(rect.size, false,[UIScreen mainScreen].scale);
    CGContextAddPath(UIGraphicsGetCurrentContext(),[UIBezierPath bezierPathWithRoundedRect:rect byRoundingCorners:UIRectCornerAllCorners cornerRadii:CGSizeMake(radius, radius)].CGPath);
    CGContextClip(UIGraphicsGetCurrentContext());
    [self drawRect:rect];
    CGContextDrawPath(UIGraphicsGetCurrentContext(), kCGPathFillStroke);
    UIImage *output = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return output;
}


- (void)zy_cornerRadiusWithImage:(UIImage *)image cornerRadius:(CGFloat)cornerRadius rectCornerType:(UIRectCorner)rectCornerType {
    CGSize size = self.bounds.size;
    CGFloat scale = [UIScreen mainScreen].scale;
    CGSize cornerRadii = CGSizeMake(cornerRadius, cornerRadius);
    
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        UIGraphicsBeginImageContextWithOptions(size, YES, scale);
        if (nil == UIGraphicsGetCurrentContext()) {
            return;
        }
        UIBezierPath *cornerPath = [UIBezierPath bezierPathWithRoundedRect:self.bounds byRoundingCorners:rectCornerType cornerRadii:cornerRadii];
        [cornerPath addClip];
        [image drawInRect:self.bounds];
        id processedImageRef = (__bridge id _Nullable)(UIGraphicsGetImageFromCurrentImageContext().CGImage);
        UIGraphicsEndImageContext();
        
        dispatch_async(dispatch_get_main_queue(), ^{
            self.layer.contents = processedImageRef;
        });
    });
}

@end
