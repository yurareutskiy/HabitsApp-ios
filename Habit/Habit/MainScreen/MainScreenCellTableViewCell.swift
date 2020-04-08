//
//  MainScreenCellTableViewCell.swift
//  Habit
//
//  Created by Мария on 07.04.2020.
//  Copyright © 2020 Мария. All rights reserved.
//

import UIKit
import SnapKit

protocol MainScreenCellProtocol: class {
//    var presenter: MainScreenPresenterProtocol! {get set}
//    var configurator: MainScreenConfiguratorProtocol {get set}
    var viewController: MainScreenViewController! {get set}
    
    func setDoneButtonImage(isDone: Bool)
    func setTitle(title: String)
    func setBackgroundColor(color: UIColor)
}

class MainScreenCell: UITableViewCell, MainScreenCellProtocol {
    
    var cellId: Int = 0
    var viewController: MainScreenViewController!
    
    var titleLabel: UILabel = {
        var label = UILabel()
        label.textColor = .darkGray
        label.font = .boldSystemFont(ofSize: 18)
        return label
    }()
    
    var doneButton: UIButton = {
        var button = UIButton()
        return button
    }()
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    func setupAppearance() {
        self.layer.masksToBounds = true
        self.layer.cornerRadius = 12
        self.addSubview(titleLabel)
        self.addSubview(doneButton)
        viewController.presenter.configureView(index: cellId)
        createTitleLabel()
        createDoneButton()
    }
    
    func createTitleLabel() {
        titleLabel.snp.makeConstraints { make in
            make.left.equalToSuperview().inset(16)
            make.centerY.equalToSuperview()
        }
    }
    
    func createDoneButton() {
        doneButton.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
        doneButton.snp.makeConstraints { make in
            make.centerY.equalToSuperview()
            make.height.width.equalTo(30)
            make.right.equalToSuperview().inset(16)
        }
    }
    
    func setDoneButtonImage(isDone: Bool) {
        if isDone {
            doneButton.setImage(.checkmark, for: .normal)
        } else {
            doneButton.setImage(.remove, for: .normal)
        }
    }
    
    func setTitle(title: String) {
        titleLabel.text = title
    }
    
    func setBackgroundColor(color: UIColor) {
        self.backgroundColor = color
    }
    
    @objc func buttonPressed(sender: UIButton) {
        print("I am selected")
        
        viewController.cell = self
        viewController.presenter.changeHabitState(index: cellId)
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        
        // Configure the view for the selected state
    }

}
