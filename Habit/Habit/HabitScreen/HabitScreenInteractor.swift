//
//  HabitScreenInteractor.swift
//  Habit
//
//  Created by Мария on 08.04.2020.
//  Copyright © 2020 Мария. All rights reserved.
//

import Foundation
import Realm

protocol HabitScreenInteractorProtocol: class {
    
}

class HabitScreenInteractor: HabitScreenInteractorProtocol {
    weak var presenter: HabitScreenPresenterProtocol!
    
    required init(presenter: HabitScreenPresenterProtocol) {
        self.presenter = presenter
    }
}
