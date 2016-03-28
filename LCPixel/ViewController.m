//
//  ViewController.m
//  LCPixel
//
//  Created by licong on 16/3/22.
//  Copyright © 2016年 Sean Lee. All rights reserved.
//

#import "ViewController.h"
#import "LCSecondViewController.h"
#import "LCPixelCell.h"

@interface ViewController ()<UITableViewDataSource,UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor grayColor];
//    
//    UILabel *label = [[UILabel alloc]init];;
//    label.text = @"测试";
//    label.textAlignment = NSTextAlignmentCenter;
//    label.backgroundColor = [UIColor magentaColor];
//    label.frame = CGRectMake(0, 0, 100, 100);
//    label.center = self.view.center;
//    label.layer.cornerRadius = 50;
//    label.layer.masksToBounds = YES;
//    [self.view addSubview:label];
//    
//    
    UIButton *button = [[UIButton alloc]init];;
    [button setTitle:@"push" forState:UIControlStateNormal];
    button.backgroundColor = [UIColor blueColor];
    button.frame = CGRectMake(0, 0, 100, 100);
    CGPoint point = self.view.center;
    point.y += 200;
    button.center = point;
    button.layer.cornerRadius = 50;
    button.layer.masksToBounds = YES;
    [button addTarget:self action:@selector(didPushClicked:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
}

- (void)didPushClicked:(UIButton *)button{
    LCSecondViewController *controller = [[LCSecondViewController alloc]init];
    [self.navigationController pushViewController:controller animated:YES];
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 100;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    LCPixelCell *cell = [tableView dequeueReusableCellWithIdentifier:@"LCPixel"];
    return cell;
}


@end
