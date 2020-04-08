//
//  NewHabitScreenPresenter.swift
//  Habit
//
//  Created by Мария on 08.04.2020.
//  Copyright © 2020 Мария. All rights reserved.
//

import Foundation

protocol NewHabitScreenPresenterProtocol: class {
    
}

class NewHabitScreenPresenter: NewHabitScreenPresenterProtocol {
    weak var viewController: NewHabitScreenViewController!
    var router: NewHabitScreenRouterProtocol!
    var interactor: NewHabitScreenInteractorProtocol!
    
    required init(viewController: NewHabitScreenViewController) {
        self.viewController = viewController
    }
}
