//
//  NSObjectExtensions.swift
//  LegoExample
//
//  Created by Yizzuide on 2017/7/11.
//  Copyright © 2017年 Yizzuide. All rights reserved.
//

import UIKit

public extension NSObject {
    public func createVCObjectFromString(className : String) -> UIViewController! {
        // get the project name
        if  let appName = Bundle.main.infoDictionary!["CFBundleName"] as? NSString {
            //拼接控制器名
            let classStringName = "\(appName).\(className)"
            //将控制名转换为类
            let classType = NSClassFromString(classStringName) as? UIViewController.Type
            if let type = classType {
                let newVC = type.init()
                return newVC
            }
        }
        return nil;
    }
    
    public func createObjectFromString(className : String) -> NSObject? {
        // 1.获取命名空间
        guard let namespace = Bundle.main.infoDictionary!["CFBundleExecutable"] as? NSString else {
            print("命名空间不存在")
            return nil
        }
        // 2.通过命名空间和类名转换成类
        let cls : AnyClass? = NSClassFromString("\(namespace).\(className)")
        
        // swift 中通过Class创建一个对象,必须告诉系统Class的类型
        guard let clsType = cls as? NSObject.Type else {
            print("无法转换成NSObject")
            return nil
        }
        return clsType.init()
    }
}
