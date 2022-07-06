//
//  XTextField.swift
//  VWN
//
//  Created by Amin on 06/07/2022.
//

import UIKit

class XTextField: UIView {
    
    // MARK: Outlets -
    @IBOutlet var uiContentView: UIView!
    @IBOutlet weak var text: UITextField!
    
    // MARK: Initializers -
    override init(frame: CGRect) {
        super.init(frame: frame)
        initSub()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        initSub()
    }
    
    // MARK: Functions -
    private func initSub() {
        uiContentView = loadViewFromNib()
        uiContentView.frame = bounds
        uiContentView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        uiContentView.translatesAutoresizingMaskIntoConstraints = true
        uiContentView.backgroundColor = .clear
        addSubview(uiContentView)
    }
    
    private func loadViewFromNib() -> UIView {
        let bundle = Bundle(for: type(of:self))
        let nib = UINib(nibName: R.nib.xTextField.name, bundle: bundle)
        let nibView = nib.instantiate(withOwner: self, options: nil).first as! UIView
        return nibView
    }
    
}
