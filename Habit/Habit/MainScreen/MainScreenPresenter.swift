//
//  MainScreenPresenter.swift
//  Habit
//
//  Created by Мария on 07.04.2020.
//  Copyright © 2020 Мария. All rights reserved.
//

import Foundation
import UIKit

protocol MainScreenPresenterProtocol: class {
    
    var router: MainScreenRouterProtocol! {set get }
    func returnNumberOfSections() -> Int
    func selectHabit(index: Int)
    func configureView(index: Int)
    func changeHabitState(index: Int)
    func addHabit()
}

class MainScreenPresenter: MainScreenPresenterProtocol {
    
    weak var viewController: MainScreenViewController!
    var router: MainScreenRouterProtocol!
    var interactor: MainScreenInteractorProtocol!
    
    var habitS = false
    
    required init(viewController: MainScreenViewController) {
        self.viewController = viewController
    }
    
    func returnNumberOfSections() -> Int {
        return 5
    }
    
    func selectHabit(index: Int) {
        router.openHabit()
    }
    
    func configureView(index: Int) {
        viewController.cell.setDoneButtonImage(isDone: habitS)
        viewController.cell.setBackgroundColor(color: UIColor.lightGray)
        viewController.cell.setTitle(title: "Habit")
    }
    
    func changeHabitState(index: Int) {
        habitS =  habitS ? false : true
        viewController.cell.setDoneButtonImage(isDone: habitS)
        
    }
    
    func addHabit() {
        router.createNewHabit()
    }
}
