//
//  NewHabitScreenRouter.swift
//  Habit
//
//  Created by Мария on 08.04.2020.
//  Copyright © 2020 Мария. All rights reserved.
//

import Foundation

protocol NewHabitScreenRouterProtocol: class {
    
}

class NewHabitScreenRouter: NewHabitScreenRouterProtocol {
    weak var viewController: NewHabitScreenViewController!
    
    init(viewController: NewHabitScreenViewController) {
        self.viewController = viewController
    }
}
