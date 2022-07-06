//
//  SplashCoordinator.swift
//  VWN
//
//  Created by Amin on 06/07/2022.
//

import Foundation
import UIKit

protocol SplashCoordinating: Coordinating{
    func navigateToLogin()
}

struct SplashCoordinator:SplashCoordinating{
    private var navigationController:UINavigationController!
    
    init(navigationController:UINavigationController){
        self.navigationController = navigationController
    }
    
    func start() {
        let vc = SplashVC(nib: R.nib.splashVC)
        let viewModel = SplashViewModel(coordinator: self)
        vc.viewModel = viewModel
        navigationController.pushViewController(vc, animated: true)
        
    }
    func navigateToLogin() {
        let loginCoordinator = LoginCoordinator(navigationController: navigationController)
        loginCoordinator.start()
    }
}
