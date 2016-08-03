//
//  ViewController.m
//  WMMenu-Demo
//
//  Created by mac on 16/8/2.
//  Copyright © 2016年 WM. All rights reserved.
//

#import "ViewController.h"
#import "WMMenu.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
   UIButton * tabButton=[UIButton new];
    tabButton.frame=CGRectMake(0,0, 60, 30);
    tabButton.selected=NO;
    tabButton.backgroundColor=[UIColor greenColor];
    [tabButton addTarget:self action:@selector(buttonAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:tabButton];
    UIButton * tabButton2=[UIButton new];
    tabButton2.frame=CGRectMake(300,0, 60, 30);
    tabButton2.selected=NO;
    tabButton2.backgroundColor=[UIColor greenColor];
    [tabButton2 addTarget:self action:@selector(buttonAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:tabButton2];
    UIButton * tabButton3=[UIButton new];
    tabButton3.frame=CGRectMake(300,700, 60, 30);
    tabButton3.selected=NO;
    tabButton3.backgroundColor=[UIColor greenColor];
    [tabButton3 addTarget:self action:@selector(buttonAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:tabButton3];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)buttonAction:(UIButton *)btn{
    NSArray* items = [@[
                        [WMMenuItem menuItem:@"回复我的"
                                        image:[UIImage imageNamed:@"回复我的"]
                                          tag:100
                                     userInfo:@{@"title":@"Menu"}],
                        [WMMenuItem menuItem:@"我的发帖"
                                        image:[UIImage imageNamed:@"我的发帖"]
                                          tag:101
                                     userInfo:@{@"title":@"Menu"}],
                        [WMMenuItem menuItem:@"我的回复"
                                        image:[UIImage imageNamed:@"我的回帖"]
                                          tag:102
                                     userInfo:@{@"title":@"Menu"}]
                        ] mutableCopy];
    [WMMenu setTintColor:[UIColor grayColor]];
    [WMMenu setTitleFont:[UIFont systemFontOfSize:15]];
    [WMMenu showMenuInView:self.view fromRect:btn.frame menuItems:items selected:^(NSInteger index, WMMenuItem *item) {
        NSLog(@"%@",items);
    }];

}
@end
