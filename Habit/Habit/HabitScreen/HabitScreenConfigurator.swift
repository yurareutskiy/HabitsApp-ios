//
//  HabitScreenConfigurator.swift
//  Habit
//
//  Created by Мария on 08.04.2020.
//  Copyright © 2020 Мария. All rights reserved.
//

import Foundation

protocol HabitScreenConfiguratorProtocol: class {
    func configure(with viewController: HabitScreenViewController)
}

class HabitScreenConfigurator: HabitScreenConfiguratorProtocol {
    func configure(with viewController: HabitScreenViewController) {
           let presenter = HabitScreenPresenter(viewController: viewController)
           let interactor = HabitScreenInteractor(presenter: presenter)
           let router = HabitScreenRouter(viewController: viewController)
           
           viewController.presenter = presenter
           presenter.interactor = interactor
           presenter.router = router
       }
}
