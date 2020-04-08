//
//  MainScreenConfigurator.swift
//  Habit
//
//  Created by Мария on 07.04.2020.
//  Copyright © 2020 Мария. All rights reserved.
//

import Foundation

protocol MainScreenConfiguratorProtocol: class {
    func configure(with viewController: MainScreenViewController)
}

class MainScreenConfigurator: MainScreenConfiguratorProtocol {
    func configure(with viewController: MainScreenViewController) {
        let presenter = MainScreenPresenter(viewController: viewController)
        let interactor = MainScreenInteractor(presenter: presenter)
        let router = MainScreenRouter(viewController: viewController)
        
        viewController.presenter = presenter
        presenter.interactor = interactor
        presenter.router = router
    }
    
    
}
