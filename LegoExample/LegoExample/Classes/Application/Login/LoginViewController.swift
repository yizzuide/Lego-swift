//
//  LoginViewController.swift
//  LegoExample
//
//  Created by yizzuide on 2020/5/16.
//  Copyright © 2020 yizzuide. All rights reserved.
//

import UIKit
import XFLegoVIPER

class LoginViewController: XFComponentViewController {

//MARK:- Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("LoginViewController -- URL参数数据： \(self.urlParams["id"]!)")
    }
    
    override func componentWillBecomeFocus() {
        print("LoginViewController -- componentWillBecomeFocus")
    }
    
    // 上一个组件可能设置的意图数据（注意：只要这个方法调用，intentData一定会有值）
    override func onNewIntent(_ intentData: Any) {
        print("LoginViewController -- 接收上一个组件返回数据：\(intentData)")
    }
    
    // 接收组件事件函数
    override func receiveComponentEventName(_ eventName: String, intentData: Any?) {
        if eventName == "Event_ReloadData" {
            print("LoginViewController -- 收到刷新数据的事件")
            return
        }
        if eventName == "Event_Register_load" {
            print("LoginViewController -- 收到注册加载的事件")
            return
        }
    }
    
//MARK:- Action
    @IBAction func indexAction() {
        // 设置意图数据（可以是任意类型数据，包括自定义对象）
        self.intentData = ["username" : "yii"]
        // push到下一个组件
        self.uiBus.openURL(forPush: "xf://mainIndex?navTitle=主页")
    }
    
    @IBAction func registerAction() {
        self.intentData = ["username" : "yii"]
        // 跳转到OC实现的模块组件（使用动态参数+自定义操作代码）
        self.uiBus.openURL(forPush: XFURLParse.url(fromPath: "xf://login/register", params: ["navTitle": "注册"])) { (nextInterface) in
            nextInterface.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "取消", style: .plain, target: nil, action: nil)
        }
        
        // 自定义跳转
        /*self.uiBus.openURL("xf://login/register", withTransitionBlock: { (thisInterface, nextInterface, TransitionCompletionBlock) in
            
        }) { (nextInterface) in
            
        }*/
    }
    
    @IBAction func losePwdAction() {
        // 跳转到一个没有类前辍的控制器
        self.uiBus.openURL(forPush: "xf://login/findLosePwd?navTitle=找回密码")
    }

}
