//
//  LoginViewModel.swift
//  VWN
//
//  Created by Amin on 06/07/2022.
//

import Foundation

protocol LoginInput{
    
}

struct LoginViewModel:LoginInput{
    private var coordinator: LoginCoordinating
    
    init(coordinator:LoginCoordinating){
        self.coordinator = coordinator
    }
}
