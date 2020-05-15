//
//  IndexViewModel.swift
//  LegoExample
//
//  Created by Yizzuide on 2017/7/13.
//  Copyright © 2017年 Yizzuide. All rights reserved.
//

import UIKit
import XFLegoVIPER

private func View(_ viewModel: LEViewModel) ->IndexViewProtocol? { return viewModel.view as? IndexViewProtocol }

class IndexViewModel: LEViewModel, IndexDataDriverProtocol {

//MARK:- Life Cycle
    override func viewDidLoad() {
        print("IndexViewModel -- viewDidLoad")
        print("IndexViewModel -- 当前组件名: \(XFComponentReflect.componentName(forComponent: self))")
        
        print("IndexViewModel -- 接收到了意图数据：\(self.componentData!)")
    }
    
    override func componentWillBecomeFocus() {
        print("IndexViewModel -- componentWillBecomeFocus")
    }
    
    override func componentWillResignFocus() {
        // 返回意图数据
        self.intentData = "resultData"
        // 发送组件事件
        self.eventBus.sendEventName("Event_ReloadData", intentData: nil, forComponents: ["Login"])
    }
    
    
//MARK:- Action
    func fetchData() {
        print("IndexViewModel -- fetchData")
        // 调用视图层刷新界面
        View(self)?.needReloadList()
    }
    
    
    func requirelookDetailAction() {
        // 在代码层只有Detail组件，pageDetail的page可以任意取名，这是框架提供的虚拟组件，为了实现多例组件
        self.uiBus.openURL(forPush: "xf://index/pageDetail", customCode: nil)
    }
    
    deinit {
        print("IndexViewModel -- deinit")
    }
    
}
