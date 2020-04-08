//
//  MainScreenRouter.swift
//  Habit
//
//  Created by Мария on 07.04.2020.
//  Copyright © 2020 Мария. All rights reserved.
//

import Foundation
import UIKit

protocol MainScreenRouterProtocol: class {
    func openHabit()
    func createNewHabit()
}

class MainScreenRouter: MainScreenRouterProtocol {
    weak var viewController: MainScreenViewController!
    
    init(viewController: MainScreenViewController) {
        self.viewController = viewController
    }
    
    func openHabit() {
        let habitViewConttroller = HabitScreenViewController()
        viewController.navigationController?.pushViewController(habitViewConttroller, animated: true)
    }
    
    func createNewHabit() {
        let newHabitViewConttroller = NewHabitScreenViewController()
        viewController.navigationController?.pushViewController(newHabitViewConttroller, animated: true)
    }
}
