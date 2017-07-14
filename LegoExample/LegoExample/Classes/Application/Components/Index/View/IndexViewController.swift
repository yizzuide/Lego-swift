//
//  IndexViewController.swift
//  LegoExample
//
//  Created by Yizzuide on 2017/7/13.
//  Copyright © 2017年 Yizzuide. All rights reserved.
//

import UIKit
import XFLegoVIPER

private func DataDriver(_ viewController: UIViewController) ->IndexDataDriverProtocol? { return viewController.dataDriver as? IndexDataDriverProtocol }

class IndexViewController: UIViewController, IndexViewProtocol {

//MARK:- Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 调用ViewModel方法
        DataDriver(self)?.fetchData()
        
        // 在任意类中可以通过这个API获取一个组件的界面层
        // 如果这个组件已经存在，只会返回之前存在的组件，想要实现多例，使用虚拟组件方式，如：xf://login/lastRegister
//        let registerVC = XFUIBus.openURL(forGetUInterface: "xf://login/register")
//        print(registerVC!)
    }
    
//MARK:- Change UI State
    internal func needReloadList() {
        print("IndexViewController -- needReloadList")
    }
    
    @IBAction func detailBtnClick() {
        DataDriver(self)?.requirelookDetailAction()
    }
    
}
