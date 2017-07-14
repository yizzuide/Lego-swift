//
//  XFRegisterViewController.h
//  LegoExample
//
//  Created by Yizzuide on 2017/7/14.
//    Copyright © 2017年 Yizzuide. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "XFComponentViewController.h"

@interface XFRegisterViewController : UIViewController <XFControllerRunnable,XFComponentUI>

/**
 *  通过其它URL组件传递过来的参数
 */
@property (nonatomic, copy) NSDictionary *URLParams;

/**
 *  通过其它URL组件传递过来的数据对象
 */
@property (nonatomic, copy) id componentData;

/**
 *  预设要传递给其它组件的意图数据
 */
@property (nonatomic, copy) id intentData;
@end
