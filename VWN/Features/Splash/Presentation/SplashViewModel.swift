//
//  SplashViewModel.swift
//  VWN
//
//  Created by Amin on 06/07/2022.
//

import Foundation
import RxSwift

protocol SplashInputProtocol{
    var onLoginPressed:PublishSubject<Void>{get set}
    var onSignUpPressed:PublishSubject<Void>{get set}
}

struct SplashViewModel:SplashInputProtocol{
    var onSignUpPressed: PublishSubject<Void>
    var onLoginPressed: PublishSubject<Void>
    private var bag:DisposeBag!
    private var coordinator:SplashCoordinating!
    
    init(coordinator:SplashCoordinating){
        self.coordinator = coordinator
        bag = DisposeBag()
        onSignUpPressed = PublishSubject<Void>()
        onLoginPressed = PublishSubject<Void>()
        bind()
    }
    
    private func bind(){
        onLoginPressed.subscribe{ _ in
            coordinator.navigateToLogin()
        }.disposed(by: bag)
        
        onSignUpPressed.subscribe{ _ in
            print("onSignUp")
        }.disposed(by: bag)
    }
    
    
}
