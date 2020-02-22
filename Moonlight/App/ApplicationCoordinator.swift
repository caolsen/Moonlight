//
//  ApplicationCoordinator.swift
//  Moonlight
//
//  Created by Christopher Olsen on 2/20/20.
//  Copyright © 2020 Christopher Olsen. All rights reserved.
//

import UIKit

class ApplicationCoordinator: OverlordCoordinator {
    private let window: UIWindow
    private let rootViewController: UINavigationController
    
    private let characterStorage: CharacterStorage
    
    private let characterListCoordinator: CharacterListCoordinator
    
    init(window: UIWindow) {
        self.window = window
        self.rootViewController = UINavigationController()
        self.characterStorage = CharacterStorage()
        self.characterListCoordinator = CharacterListCoordinator(presenter: rootViewController, characterStorage: characterStorage)
        
        rootViewController.navigationBar.prefersLargeTitles = true
    }
    
    func start() {
        window.rootViewController = rootViewController
        characterListCoordinator.start()
        window.makeKeyAndVisible()
    }
}
