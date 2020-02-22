//
//  CharacterListCoordiniator.swift
//  Moonlight
//
//  Created by Christopher Olsen on 2/22/20.
//  Copyright © 2020 Christopher Olsen. All rights reserved.
//

import UIKit

class CharacterListCoordinator: OverlordCoordinator {
    private let presenter: UINavigationController
    private let characterStorage: CharacterStorage
    
    private let characterListViewController: CharacterListViewController
    
    init(presenter: UINavigationController, characterStorage: CharacterStorage) {
        self.presenter = presenter
        self.characterStorage = characterStorage
        self.characterListViewController = CharacterListViewController()
    }
    
    func start() {
        characterListViewController.characters = characterStorage.characters
        presenter.pushViewController(characterListViewController, animated: true)
    }
}
