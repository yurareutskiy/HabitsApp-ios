//
//  NewHabitScreenInteractor.swift
//  Habit
//
//  Created by Мария on 08.04.2020.
//  Copyright © 2020 Мария. All rights reserved.
//

import Foundation
 
protocol NewHabitScreenInteractorProtocol: class {
    
}

class NewHabitScreenInteractor: NewHabitScreenInteractorProtocol {
    weak var presenter: NewHabitScreenPresenterProtocol!
    
    required init(presenter: NewHabitScreenPresenterProtocol) {
        self.presenter = presenter
    }
}
