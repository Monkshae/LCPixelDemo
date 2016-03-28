//
//  LCView.m
//  LCPixel
//
//  Created by licong on 16/3/25.
//  Copyright © 2016年 Sean Lee. All rights reserved.
//

#import "LCView.h"

@implementation LCView

- (void)layoutSubviews{
    [super layoutSubviews];
//    UIImageView *imageView  = [[UIImageView alloc]initWithImage:[self lc_cornerRadiusWithCornerRadius:10]];
//    [self insertSubview:imageView atIndex:0];
//    [self lc_cornerRadiusWithCornerRadius:100];
    
}


- (void )lc_cornerRadiusWithCornerRadius:(CGFloat)cornerRadius{
   
    
    
    CGSize size = self.bounds.size;
    CGFloat scale = [UIScreen mainScreen].scale;
    CGSize cornerRadii = CGSizeMake(cornerRadius, cornerRadius);
    
    
    
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        
        UIGraphicsBeginImageContextWithOptions(size, NO, scale);
        UIBezierPath *cornerPath = [UIBezierPath bezierPathWithRoundedRect:self.bounds byRoundingCorners:UIRectCornerAllCorners cornerRadii:cornerRadii];
//        [cornerPath addClip];
//        [[UIColor redColor] set];

        
        // 设置填充颜色
        UIColor *fillColor = [UIColor greenColor];
        [fillColor set];
        [cornerPath fill];
        
        // 设置画笔颜色
//        UIColor *strokeColor = [UIColor blueColor];
//        [strokeColor set];
        
        // 根据我们设置的各个点连线
        [cornerPath stroke];
        
        
        
        UIImage *processedImage = UIGraphicsGetImageFromCurrentImageContext();
        UIGraphicsEndImageContext();
        
        dispatch_async(dispatch_get_main_queue(), ^{
            UIImageView *imageView  = [[UIImageView alloc]initWithImage:processedImage];
            [self insertSubview:imageView atIndex:0];
        });
    });
    
//    
//    UIGraphicsBeginImageContextWithOptions(size, NO, scale);
//    UIBezierPath *cornerPath = [UIBezierPath bezierPathWithRoundedRect:self.bounds byRoundingCorners:UIRectCornerAllCorners cornerRadii:cornerRadii];
//    [cornerPath stroke];
//    [[UIColor redColor] setFill];
//    UIImage *processedImage = UIGraphicsGetImageFromCurrentImageContext();
//    UIGraphicsEndImageContext();
//    return processedImage;
    
}





@end
