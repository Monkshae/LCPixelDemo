//
//  LCPixelCell.m
//  LCPixel
//
//  Created by licong on 16/3/22.
//  Copyright © 2016年 Sean Lee. All rights reserved.
//

#import "LCPixelCell.h"
#import "UIView+AddCornerRadius.h"
#import "LCImageView.h"
#import "LCView.h"
@implementation LCPixelCell

- (void)awakeFromNib {
    // Initialization code

    [super awakeFromNib];

    
//    for (int i = 0; i< 9; i++) {
//        UIView *view = [[UIView alloc]init];
//        view.frame = CGRectMake(10 + i * 40, 10, 30, 30);
//        [view lc_addCorner:10];
//        [self.contentView addSubview:view];
//    }
    
    
//    for (int j = 0; j< 9; j++) {
//        UIImageView *image = [[UIImageView alloc]initWithFrame:CGRectMake(10 + j * 40, 50, 30, 30)];
//        image.backgroundColor = [UIColor redColor];
//        [image lc_addImageViewCorner:10];
//        [self.contentView addSubview:image];
//    }

//    for (int j = 0; j< 9; j++) {
//        LCImageView *image = [[LCImageView alloc]initWithFrame:CGRectMake(10 + j * 40, 50, 30, 30)];
//        [self.contentView addSubview:image];
//    }
    
    
    
    [self.contentView.subviews enumerateObjectsUsingBlock:^(__kindof UIView * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
       
        if ([obj isKindOfClass:[UILabel class]] || [obj isKindOfClass:[UIButton class]] || [obj isKindOfClass:[UIView class]]) {
            obj.clipsToBounds = YES;
            obj.layer.cornerRadius = 10;
//            obj.layer.borderColor = [UIColor redColor].CGColor;
//            obj.layer.borderWidth = 5;
//            obj.layer.shadowOffset=CGSizeMake(5, 5);
//            obj.layer.shadowColor = [UIColor blueColor].CGColor;
//            obj.layer.shadowOpacity = 1;
//            obj.layer.bounds = self.contentView.bounds;
//            obj.layer.masksToBounds = YES;
        }
        
    }];
    
}


//- (instancetype)initWithCoder:(NSCoder *)aDecoder{
//    
//    if (self = [super initWithCoder:aDecoder]) {
//        
//        for (int j = 0; j< 9; j++) {
//            LCImageView *image = [[LCImageView alloc]initWithFrame:CGRectMake(10 + j * 40, 50, 30, 30)];
//            [self.contentView addSubview:image];
////            image.backgroundColor = [UIColor whiteColor];
//        }
//        
//    }
//    return self;
//}


- (instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        
    }
    return self;
}

- (void)drawRect:(CGRect)rect{
    
//    [self.contentView.subviews enumerateObjectsUsingBlock:^(__kindof UIView * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
//       
//        UIBezierPath *path = [UIBezierPath bezierPathWithRoundedRect:obj.bounds byRoundingCorners:UIRectCornerAllCorners cornerRadii:CGSizeMake(10, 10)];
//
//        CAShapeLayer *layer = [[CAShapeLayer alloc]init];
//        layer.frame = obj.bounds;
//        layer.path = path.CGPath;
//        obj.layer.mask = layer;
//
//    }];
    
}

//- (void)layoutSubviews{
//    [super layoutSubviews];
//    
//    [self.contentView.subviews enumerateObjectsUsingBlock:^(__kindof UIView * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
//    
//        
//        if ([obj isKindOfClass:[UIImageView class]]) {
//            UIImageView *image = (UIImageView *)obj;
//            [image lc_addImageViewCorner:10];
//            
//        }
//    }];
//   
//
//    
//}

@end
