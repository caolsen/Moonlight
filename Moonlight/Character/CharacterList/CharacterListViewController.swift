//
//  CharacterListViewController.swift
//  Moonlight
//
//  Created by Christopher Olsen on 2/22/20.
//  Copyright © 2020 Christopher Olsen. All rights reserved.
//

import UIKit

class CharacterListViewController: UIViewController {
    private let characterTableView: UITableView = {
        let tableView = UITableView(frame: .zero, style: .grouped)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
    }()
    
    var characters: [Character] = [] {
        didSet {
            characterTableView.reloadData()
        }
    }
    
    init() {
        super.init(nibName: nil, bundle: nil)
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) is not impletmented.")
    }
    
    private func setup() {
        title = "Characters"
        view.backgroundColor = .white
        
        characterTableView.delegate = self
        characterTableView.dataSource = self
        
        view.addSubview(characterTableView)
        
        NSLayoutConstraint.activate([
            characterTableView.topAnchor.constraint(equalTo: view.topAnchor),
            characterTableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            characterTableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            characterTableView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
        ])
    }
}

extension CharacterListViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return characters.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: "CharacterCell")
        cell.textLabel?.text = characters[indexPath.row].name
        cell.accessoryType = .disclosureIndicator
        return cell
    }
}
