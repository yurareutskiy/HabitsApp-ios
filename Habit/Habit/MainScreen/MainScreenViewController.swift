//
//  MainScreenViewController.swift
//  Habit
//
//  Created by Мария on 07.04.2020.
//  Copyright © 2020 Мария. All rights reserved.
//

import UIKit
import SnapKit

class MainScreenViewController: UIViewController {
    
    var presenter: MainScreenPresenterProtocol!
    var cell: MainScreenCellProtocol!
    let configurator: MainScreenConfiguratorProtocol = MainScreenConfigurator()
    
    var titleLabel: UILabel = {
        var titleLabel = UILabel()
        titleLabel.textColor = .darkGray
        titleLabel.text = "Habit"
        titleLabel.font = .boldSystemFont(ofSize: 25)
        return titleLabel
    }()
    
    var tableView: UITableView = {
        var tableView = UITableView()
        tableView.separatorStyle = .none
        tableView.backgroundColor = .clear
        return tableView
    }()
    
    var addButton: UIButton = {
        var addButton = UIButton()
        addButton.setBackgroundImage(.add, for: .normal)
        return addButton
    }()
    
    let identifier = "MainScreenCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configurator.configure(with: self)
        setupAppearance()
    }

    func setupAppearance() {
        //self.navigationController?.navigationBar.isHidden = true
        view.backgroundColor = .white
        view.addSubview(tableView)
        view.addSubview(titleLabel)
        view.addSubview(addButton)
        createAddButton()
        createTitleLabel()
        createTableView()
    }
    
    func createTableView() {
        tableView.register(MainScreenCell.self, forCellReuseIdentifier: identifier)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.snp.makeConstraints { make in
            make.bottom.equalToSuperview().inset(16)
            make.right.equalToSuperview().inset(16)
            make.top.equalTo(titleLabel.snp.bottom).offset(8)
            make.left.equalToSuperview().inset(16)
        }
    }
    
    func createTitleLabel() {
        titleLabel.snp.makeConstraints { make in
            make.left.equalToSuperview().inset(32)
            make.top.equalTo(addButton.snp.bottom).offset(3)
        }
    }
    
    func createAddButton() {
        addButton.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
        addButton.snp.makeConstraints { make in
            make.height.width.equalTo(50)
            //как отступить от navBar?
            make.top.equalToSuperview().inset(90)
            make.right.equalToSuperview().inset(16)
        }
    }
    
    @objc func buttonPressed(sender: UIButton) {
        print("I am selected")
        
        presenter.addHabit()
    }
    
}
