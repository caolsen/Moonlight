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
    private let rootViewController: UIViewController
    
    init(window: UIWindow) {
        self.window = window
        self.rootViewController = UIViewController()
        
        rootViewController.view.backgroundColor = .cyan
    }
    
    func start() {
        window.rootViewController = rootViewController
        window.makeKeyAndVisible()
    }
}
