//
//  DetailPresenter.swift
//  LegoExample
//
//  Created by Yizzuide on 2017/7/14.
//  Copyright © 2017年 Yizzuide. All rights reserved.
//

import UIKit
import XFLegoVIPER

private func Interactor(_ presenter: XFPresenter) ->DetailInteractorPort? { return presenter.interactor as? DetailInteractorPort }
private func UserInterface(_ presenter: XFPresenter) ->DetailUserInterfacePort? { return presenter.userInterface as? DetailUserInterfacePort }
private func Routing(_ presenter: XFPresenter) ->DetailWireFramePort? { return presenter.routing as? DetailWireFramePort }

class DetailPresenter: XFPresenter, DetailEventHandlerPort {

    override func viewDidLoad() {
        print("DetailPresenter -- 当前组件名: \(XFComponentReflect.componentName(forComponent: self)))")
        
    }
    
    override func initRenderView() {
        Interactor(self)?.fetchData()
    }
    
    override func onNewIntent(_ intentData: Any) {
        
    }
    
    override func receiveComponentEventName(_ eventName: String, intentData: Any?) {
        
    }
    
}
