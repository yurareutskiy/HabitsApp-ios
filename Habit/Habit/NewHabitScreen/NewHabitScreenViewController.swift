//
//  NewHabitScreenViewController.swift
//  Habit
//
//  Created by Мария on 08.04.2020.
//  Copyright © 2020 Мария. All rights reserved.
//

import UIKit

class NewHabitScreenViewController: UIViewController {

    var presenter: NewHabitScreenPresenterProtocol!
    let configurator: NewHabitScreenConfiguratorProtocol = NewHabitScreenConfigurator()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .blue
    }

}
