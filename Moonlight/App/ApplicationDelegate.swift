//
//  ApplicationDelegate.swift
//  Moonlight
//
//  Created by Christopher Olsen on 2/20/20.
//  Copyright © 2020 Christopher Olsen. All rights reserved.
//

import UIKit

@UIApplicationMain
class ApplicationDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    private var applicationCoordinator: ApplicationCoordinator?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        let window = UIWindow(frame: UIScreen.main.bounds)
        let applicationCoordinator = ApplicationCoordinator(window: window)
        
        self.window = window
        self.applicationCoordinator = applicationCoordinator
        
        applicationCoordinator.start()
        
        return true
    }
}
