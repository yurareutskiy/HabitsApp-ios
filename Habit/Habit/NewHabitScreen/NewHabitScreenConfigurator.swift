//
//  NewHabitScreenConfigurator.swift
//  Habit
//
//  Created by Мария on 08.04.2020.
//  Copyright © 2020 Мария. All rights reserved.
//

import Foundation

protocol NewHabitScreenConfiguratorProtocol: class {
    func configure(with viewController: NewHabitScreenViewController)
}

class NewHabitScreenConfigurator: NewHabitScreenConfiguratorProtocol {
    func configure(with viewController: NewHabitScreenViewController) {
        let presenter = NewHabitScreenPresenter(viewController: viewController)
        let interactor = NewHabitScreenInteractor(presenter: presenter)
        let router = NewHabitScreenRouter(viewController: viewController)
        
        viewController.presenter = presenter
        presenter.interactor = interactor
        presenter.router = router
    }
}
