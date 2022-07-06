//
//  AppCoordinator.swift
//  VWN
//
//  Created by Amin on 06/07/2022.
//

import Foundation
import UIKit

protocol Coordinating{
    func start()
}

struct AppCoordinator:Coordinating{
    private var window:UIWindow
    
    init(window:UIWindow){
        self.window = window
    }
    
    func start() {
        let nav = UINavigationController()
        let splashCoordinator = SplashCoordinator(navigationController: nav)
        window.rootViewController = nav
        window.makeKeyAndVisible()
        splashCoordinator.start()
        
    }
    
}
