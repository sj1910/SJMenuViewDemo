//
//  SJMenuView.h
//  Created by sino on 2019/5/21.
//  Copyright © 2019年 Quincy-QC. All rights reserved.
//

#import <UIKit/UIKit.h>

@class SJMenuAction;
@interface SJMenuView : UIView
//默认倒角   default = 5.0
@property (nonatomic,assign) CGFloat                        cornerRaius;
//设置分割线颜色 default = 灰色
@property (nonatomic,strong) UIColor                       *separatorColor;
//设置菜单颜色  default = 白色（也可以通过BackgroundColor设置）
@property (nonatomic,strong) UIColor                       *menuColor;
//设置菜单单元格高度  default = 44
@property (nonatomic,assign) CGFloat                        menuCellHeight;
//最大显示数量  default = 5
@property (nonatomic,assign) NSInteger                      maxDisplayCount;
//是否显示阴影 default = YES(默认设置，也可以自己通过layer属性设置)
@property (nonatomic,assign,getter = isShadowShowing)BOOL   isShowShadow;
//选择菜单选项后消失 default = YES
@property (nonatomic,assign)  BOOL                          dismissOnselected;
//点击菜单外消失 default = YES
@property (nonatomic,assign)  BOOL                          dismissOnTouchOutside;
//设置字体大小 default = 15
@property (nonatomic,assign)  UIFont                        *textFont;
//设置字体颜色 default = 黑色
@property (nonatomic,strong)  UIColor                       *textColor;
//设置偏移距离 default = 0（与触摸点在Y轴上的偏移）
@property (nonatomic,assign)  CGFloat                       offset;

// 从关联点创建
+ (instancetype)menuWithActions:(NSArray<SJMenuAction *> *)actions width:(CGFloat)width atPoint:(CGPoint)point;
// 从关联视图创建（可以是UIView和UIBarButtonItem）
+ (instancetype)menuWithActions:(NSArray<SJMenuAction *> *)actions width:(CGFloat)width relyonView:(id)view;
- (void)show;
- (instancetype)init NS_UNAVAILABLE;
+ (instancetype)new NS_UNAVAILABLE;
@end

@interface SJMenuAction : NSObject
@property (nonatomic, readonly) NSString      *title;
@property (nonatomic, readonly) UIImage       *image;
@property (nonatomic,copy, readonly) void (^handler)(SJMenuAction *action);
+ (instancetype)actionWithTitle:(NSString *)title image:(UIImage *)image handler:(void (^)(SJMenuAction *action))handler;
- (instancetype)init NS_UNAVAILABLE;
+ (instancetype)new NS_UNAVAILABLE;
@end




