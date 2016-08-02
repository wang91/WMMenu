//
//  WMMenu.h
//  WMMenu-Demo
//
//  Created by mac on 16/8/2.
//  Copyright © 2016年 WM. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "WMMenuItem.h"


typedef void(^WMMenuSelectedItem)(NSInteger index, WMMenuItem *item);

typedef enum {
    WMMenuBackgrounColorEffectSolid      = 0, //!<背景显示效果.纯色
    WMMenuBackgrounColorEffectGradient   = 1, //!<背景显示效果.渐变叠加
} WMMenuBackgrounColorEffect;

@interface WMMenu : NSObject

+ (void)showMenuInView:(UIView *)view fromRect:(CGRect)rect menuItems:(NSArray *)menuItems selected:(WMMenuSelectedItem)selectedItem;

+ (void)dismissMenu;

// 主题色
+ (UIColor *)tintColor;
+ (void)setTintColor:(UIColor *)tintColor;

// 标题字体
+ (UIFont *)titleFont;
+ (void)setTitleFont:(UIFont *)titleFont;

// 背景效果
+ (WMMenuBackgrounColorEffect)backgrounColorEffect;
+ (void)setBackgrounColorEffect:(WMMenuBackgrounColorEffect)effect;

// 是否显示阴影
+ (BOOL)hasShadow;
+ (void)setHasShadow:(BOOL)flag;

@end
