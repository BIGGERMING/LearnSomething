//
//  ViewController.m
//  粒子点赞动画
//
//  Created by 蔡明 on 16/12/6.
//  Copyright © 2016年 com.baleijia. All rights reserved.
//

#import "ViewController.h"

#import "EmitterButton.h"
@interface ViewController ()
@property(nonatomic, strong) EmitterButton *emiiterButton;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    EmitterButton *emitterButton = [[EmitterButton alloc] init];
    emitterButton.frame = CGRectMake(100, 100, 50, 50);
    [emitterButton addTarget:self action:@selector(emitterButtonCliced) forControlEvents:UIControlEventTouchUpInside];
    [emitterButton setImage:[UIImage imageNamed:@"love_before"] forState:UIControlStateNormal];
    [emitterButton setImage:[UIImage imageNamed:@"love_after"] forState:UIControlStateSelected];
    self.emiiterButton = emitterButton;
    [self.view addSubview:emitterButton];
}

- (void)emitterButtonCliced
{
    self.emiiterButton.selected = !self.emiiterButton.selected;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
