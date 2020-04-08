//
//  MainScreenInteractor.swift
//  Habit
//
//  Created by Мария on 07.04.2020.
//  Copyright © 2020 Мария. All rights reserved.
//

import Foundation
import Realm

protocol MainScreenInteractorProtocol: class {
    
}

class MainScreenInteractor: MainScreenInteractorProtocol {
    weak var presenter: MainScreenPresenterProtocol!
    
    required init(presenter: MainScreenPresenterProtocol) {
        self.presenter = presenter
    }
}
