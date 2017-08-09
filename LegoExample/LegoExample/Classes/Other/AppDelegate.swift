//
//  AppDelegate.swift
//  LegoExample
//
//  Created by Yizzuide on 2017/7/11.
//  Copyright © 2017年 Yizzuide. All rights reserved.
//

import UIKit
import XFLegoVIPER

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        self.window = UIWindow(frame: UIScreen.main.bounds)
        
        /*let vc = self.createVCObjectFromString(className: "ViewController")
        self.window?.rootViewController = vc
        self.window?.makeKeyAndVisible()
        let object = self.createObjectFromString(className: "ViewModel") as? ViewModel
        object?.renderText = "显示文本"*/
        
        // 配置乐高
        XFLegoConfig.default()
            .addComponentHanderPlug(LEMVVMModuleHandler.self)
            // 框架同时支持OC、Swift混写，并可以相互通过URL跳转，这里的类前辍是给OC用的，纯Swift可以去掉下面一行
            .setClassPrefix("XF")
        
        // 添加URL路由
        XFURLRoute.initURLGroup(["xf://login",
                                 "xf://login/register",
                                 // 下面注册的是虚拟组件的URL，框架对支持的虚拟组件无关于架构模式(MVC、MVVM、VIPER)
                                 "xf://login/findLosePwd",
                                 "xf://mainIndex",
                                 "xf://index/pageDetail"
                                 ])
        
        // 开启第一个组件
        XFUIBus().openURL("xf://login?nav=UI&navTitle=登录&id=123", on: self.window!, customCode: nil)
        
        
        // 在任意地方发送组件事件
//        XFComponentManager.sendEventName("Event_Global_Load", intentData: nil, forComponents: ["Login"])
        
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

