//
//  HabitScreenViewController.swift
//  Habit
//
//  Created by Мария on 08.04.2020.
//  Copyright © 2020 Мария. All rights reserved.
//

import UIKit
import SnapKit

class HabitScreenViewController: UIViewController {

    var presenter: HabitScreenPresenterProtocol!
    let configurator: HabitScreenConfiguratorProtocol = HabitScreenConfigurator()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = .yellow
    }

}
