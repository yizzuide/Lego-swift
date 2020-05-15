//
//  XFDetailInteractor.swift
//  LegoExample
//
//  Created by Yizzuide on 2017/7/14.
//  Copyright © 2017年 Yizzuide. All rights reserved.
//

import UIKit
import XFLegoVIPER

private func DataManager(_ interactor: XFInteractor) ->DetailDataManagerPort? { return interactor.dataManager as? DetailDataManagerPort }

class DetailInteractor: XFInteractor, DetailInteractorPort {

    func fetchData() {
        print("DetailInteractor -- fetchData")
    }
}
