//
//  SplashVC.swift
//  VWN
//
//  Created by Amin on 06/07/2022.
//

import UIKit
import RxSwift

class SplashVC: UIViewController {

    @IBOutlet var uiAuthButtons: [UIButton]!
    
    var viewModel:SplashInputProtocol!
    private var bag:DisposeBag!
    override func viewDidLoad() {
        super.viewDidLoad()
        bag = DisposeBag()
    }
    
    
    @IBAction func uiButtonPressed(_ sender: UIButton) {
        uiAuthButtons.forEach { button in
            button.backgroundColor = .clear
        }
        sender.backgroundColor = .white
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) { [weak self] in
            guard let self = self else {return}
            if sender.tag == 2{
                self.viewModel.onLoginPressed.onNext(())
            }
        }
    }
    


}
