//
//  XFRegisterViewController.m
//  LegoExample
//
//  Created by Yizzuide on 2017/7/14.
//    Copyright © 2017年 Yizzuide. All rights reserved.
//

#import "XFRegisterViewController.h"

@interface XFRegisterViewController ()

@end

@implementation XFRegisterViewController

// 把控制器导出为组件
XF_EXPORT_COMPONENT

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    NSString *msg = [NSString stringWithFormat:@"DetailPresenter -- 当前组件名: %@", XF_ModuleName];
    NSLog(@"%@", msg);
    
    // 发送事件给swift的登录模块
    XF_SendEventForComponents_(@"Event_Register_load", nil, @"Login")
    
    // 配置当前视图
    [self config];
    // 初始化视图
    [self setUpViews];
}

#pragma mark - 初始化
- (void)config {
    self.view.backgroundColor = [UIColor magentaColor];
}

- (void)setUpViews {
    
}


#pragma mark - LifeCycle
// 接收到组件返回数据
- (void)onNewIntent:(id)intentData
{
    
}

// 注册MVx通知
- (void)registerMVxNotifactions
{
    // 注册MVx构架通知
    //    XF_RegisterMVxNotis_(XFUserDidLoginNotifaction)
}


// 接受到MVx构架通知或XFLegoVIPER模块的事件
- (void)receiveComponentEventName:(NSString *)eventName intentData:(id)intentData
{
    // 匹配对应通知
    /*XF_EventIs_(XFUserDidLoginNotifaction, {
     // TODO
     })*/
}


#pragma mark - Change UI Action


#pragma mark - UIControlDelegate


#pragma mark - Getter

@end
