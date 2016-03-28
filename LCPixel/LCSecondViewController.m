//
//  SecondViewController.m
//  LCPixel
//
//  Created by licong on 16/3/22.
//  Copyright © 2016年 Sean Lee. All rights reserved.
//

#import "LCSecondViewController.h"
#import "LCImageView.h"
#import "LCView.h"
//#import "UIView+AddCornerRadius.h"
@interface LCSecondViewController ()

@end

@implementation LCSecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.view.backgroundColor = [UIColor whiteColor];
//    UILabel *label = [[UILabel alloc]init];;
//    label.text = @"测试";
//    label.textAlignment = NSTextAlignmentCenter;
//    label.backgroundColor = [UIColor magentaColor];
//    label.frame = CGRectMake(0, 0, 100, 100);
//    label.center = self.view.center;
//    label.layer.cornerRadius = 50;
//    label.layer.masksToBounds = YES;
//    label.layer.shadowOffset = CGSizeMake(5, 5);
//    label.layer.shadowColor = [UIColor blueColor].CGColor;
//    label.layer.shadowRadius = 3;
//    label.layer.shadowOpacity = 0.8;
//    
//    [self.view addSubview:label];
    
//    
    LCView *view = [[LCView alloc]init];;
    view.backgroundColor = [UIColor magentaColor];
    view.frame = CGRectMake(0, 0, 100, 100);
    view.center = self.view.center;
    view.layer.cornerRadius = 50;
    view.layer.masksToBounds = YES;
    [self.view addSubview:view];
//    [view lc_cornerRadiusWithCornerRadius:100];

    
    
//    UIButton *button = [[UIButton alloc]init];;
//    [button setTitle:@"push" forState:UIControlStateNormal];
//    button.backgroundColor = [UIColor blueColor];
//    button.frame = CGRectMake(0, 0, 100, 100);
//    CGPoint point = self.view.center;
//    point.y += 200;
//    button.center = point;
//    button.layer.cornerRadius = 50;
//    button.layer.masksToBounds = YES;
//    [button addTarget:self action:@selector(didPushClicked:) forControlEvents:UIControlEventTouchUpInside];
//    [self.view addSubview:button];
    
    
    
//    LCImageView *imageView = [[LCImageView alloc]init];;
//    imageView.backgroundColor = [UIColor blueColor];
//   
////    [imageView lc_addImageViewCorner:10];
//    [imageView zy_cornerRadiusWithImage:[UIImage imageNamed:@"test"] cornerRadius:10 rectCornerType:UIRectCornerAllCorners];
//    [imageView zy_cornerRadiusWithImage:[UIImage imageNamed:@"test"] cornerRadius:100 rectCornerType:UIRectCornerAllCorners backgroundColor:[UIColor redColor]];
//    imageView.frame = CGRectMake(0, 0, 100, 100);
//    CGPoint point = self.view.center;
//    point.y += 200;
//    imageView.center = point;
//
//
//    [self.view addSubview:imageView];
}


@end
