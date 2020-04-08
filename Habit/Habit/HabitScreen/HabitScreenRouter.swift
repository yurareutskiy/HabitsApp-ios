//
//  HabitScreenRouter.swift
//  Habit
//
//  Created by Мария on 08.04.2020.
//  Copyright © 2020 Мария. All rights reserved.
//

import Foundation

protocol HabitScreenRouterProtocol: class {
    
}

class HabitScreenRouter: HabitScreenRouterProtocol {
    weak var viewController: HabitScreenViewController!
    
    init(viewController: HabitScreenViewController) {
        self.viewController = viewController
    }
}
