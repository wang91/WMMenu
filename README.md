# WMMenu
弹出框菜单，可根据位置设置弹出方向，可添加图片
#使用
   UIButton * tabButton=[UIButton new];
    tabButton.frame=CGRectMake(0,0, 60, 30);
    tabButton.selected=NO;
    tabButton.backgroundColor=[UIColor greenColor];
    [tabButton addTarget:self action:@selector(buttonAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:tabButton];
    
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
