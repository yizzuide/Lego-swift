//
//  DetailRouting.swift
//  LegoExample
//
//  Created by Yizzuide on 2017/7/14.
//  Copyright © 2017年 Yizzuide. All rights reserved.
//

import UIKit
import XFLegoVIPER

class DetailRouting: XFRouting, DetailWireFramePort {

    // 实现父类组装函数
    open override class func assemble() -> Self {
        // 使用自动组装器方式
        let routing = self.standard()
//        routing?.assembly.autoAssemblyModule() // 普通组件使用这个函数
        routing?.assembly.autoAssemblyShareModule() // 虚拟组件时使用这个函数
        return routing!
    }
}
