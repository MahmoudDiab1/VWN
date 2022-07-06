//
//  LoginCoordinator.swift
//  VWN
//
//  Created by Amin on 06/07/2022.
//

import UIKit

protocol LoginCoordinating:Coordinating{
    
}

struct LoginCoordinator:LoginCoordinating{
    
    private var navigationController:UINavigationController!
    
    init(navigationController:UINavigationController){
        self.navigationController = navigationController
    }
    func start() {
        let vc = LoginVC(nib: R.nib.loginVC)
        let viewModel = LoginViewModel(coordinator: self)
        vc.viewModel = viewModel
        navigationController.pushViewController(vc, animated: true)
    }
}
