//
//  HabitScreenPresenter.swift
//  Habit
//
//  Created by Мария on 08.04.2020.
//  Copyright © 2020 Мария. All rights reserved.
//

import Foundation

protocol HabitScreenPresenterProtocol: class {
    
}

class HabitScreenPresenter: HabitScreenPresenterProtocol {
    weak var viewController: HabitScreenViewController!
    var router: HabitScreenRouterProtocol!
    var interactor: HabitScreenInteractorProtocol!
    
    required init(viewController: HabitScreenViewController) {
        self.viewController = viewController
    }
}
