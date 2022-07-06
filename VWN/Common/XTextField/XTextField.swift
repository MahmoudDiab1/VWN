//
//  XTextField.swift
//  VWN
//
//  Created by Amin on 06/07/2022.
//

import UIKit

class XTextField: UIView {

    @IBOutlet var uiContentView: UIView!
    @IBOutlet weak var text: UITextField!
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        initSub()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        initSub()
    }
    private func initSub(){
//        translatesAutoresizingMaskIntoConstraints = false
        Bundle.main.loadNibNamed(R.nib.xTextField.name, owner: self, options: nil)
        addSubview(uiContentView)
            uiContentView.frame = self.bounds
      
    }

}
