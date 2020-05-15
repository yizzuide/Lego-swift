//
//  DetailActivity.swift
//  LegoExample
//
//  Created by Yizzuide on 2017/7/13.
//  Copyright © 2017年 Yizzuide. All rights reserved.
//

import UIKit
import XFLegoVIPER

private func EventHandler(_ activity: UIViewController) ->DetailEventHandlerPort? { return activity.eventHandler as? DetailEventHandlerPort }

class DetailActivity: UIViewController, DetailUserInterfacePort {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    

   
}
