//
//  TestViewController.m
//  Demo
//  Created by sino on 2019/5/21.
//  Copyright © 2019年 Quincy-QC. All rights reserved.
//

#import "TestViewController.h"
#import "SJMenuView.h"
@interface TestViewController ()
@property(nonatomic,strong)NSArray      *arr;
@property(nonatomic,strong)SJMenuView   *mView;
@end

@implementation TestViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIImage *image = [UIImage imageNamed:@"ic_filter_category_0"];
    // Do any additional setup after loading the view.
    SJMenuAction *action = [SJMenuAction actionWithTitle:@"首页" image:image handler:^(SJMenuAction *action) {
        NSLog(@"点击了%@",action.title);
    }];
    SJMenuAction *action1 = [SJMenuAction actionWithTitle:@"个人" image:image handler:^(SJMenuAction *action) {
        NSLog(@"点击了%@",action.title);
    }];
    SJMenuAction *action2 = [SJMenuAction actionWithTitle:@"最新" image:image handler:^(SJMenuAction *action) {
        NSLog(@"点击了%@",action.title);
    }];
    SJMenuAction *action3 = [SJMenuAction actionWithTitle:@"搜索页" image:image handler:^(SJMenuAction *action) {
        NSLog(@"点击了%@",action.title);
    }];
    SJMenuAction *action4 = [SJMenuAction actionWithTitle:@"新闻页" image:image handler:^(SJMenuAction *action) {
        NSLog(@"点击了%@",action.title);
    }];
    
    self.arr = @[action,action1,action2,action3,action4,action,action1,action2];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    UITouch *touch = touches.anyObject;
    CGPoint P = [touch locationInView:self.view];
    
    // 创建
    SJMenuView *view = [SJMenuView menuWithActions:self.arr width:140 atPoint:P];
    self.mView = view;
    
    // 自定义设置
    view.menuColor = [UIColor whiteColor];
    view.separatorColor = [UIColor whiteColor];
    view.maxDisplayCount = 20;
    view.offset = 100;
    view.textColor = [UIColor blueColor];
    view.textFont = [UIFont boldSystemFontOfSize:18];
    view.menuCellHeight = 50;
    view.dismissOnselected = YES;
    view.dismissOnTouchOutside = YES;

    // 显示
    [view show];
    
    
}
- (IBAction)buttonItemClick:(UIBarButtonItem *)sender {
    SJMenuView *view = [SJMenuView menuWithActions:self.arr width:140 relyonView:sender];
    view.maxDisplayCount = 7;

    [view show];

    self.mView = view;
    
}
- (IBAction)button1Click:(UIButton *)sender {
    SJMenuView *view = [SJMenuView menuWithActions:self.arr width:140 relyonView:sender];
    view.maxDisplayCount = 7;

    [view show];
}
- (IBAction)button2Click:(UIButton *)sender {
    SJMenuView *view = [SJMenuView menuWithActions:self.arr width:140 relyonView:sender];
    view.maxDisplayCount = 7;

    [view show];
}
- (IBAction)button3Click:(UIButton *)sender {
    SJMenuView *view = [SJMenuView menuWithActions:self.arr width:140 relyonView:sender];
    view.maxDisplayCount = 8;

    [view show];
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
