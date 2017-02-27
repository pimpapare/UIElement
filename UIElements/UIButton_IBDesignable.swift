//
//  UIButton_IBDesignable.swift
//  UIElements
//
//  Created by pimpaporn chaichompoo on 2/27/17.
//  Copyright © 2017 Pimpaporn Chaichompoo. All rights reserved.
//

import UIKit

@IBDesignable
class UIButton_IBDesignable: UIButton {

    @IBInspectable var bgAlpha: CGFloat? = 0.4{ didSet { setBackgroundAlpha() }}
    @IBInspectable var color: UIColor? = UIColor.red{ didSet { setBackgroundAlpha() }}

    func setBackgroundAlpha() {
        
        self.backgroundColor = color?.withAlphaComponent(bgAlpha!)
    }
    
    override func layoutIfNeeded() {
        super.layoutSubviews()
        setBackgroundAlpha()
    }
    
    @IBInspectable var cornerRadius: CGFloat {
        get {
            return layer.cornerRadius
        }
        set {
            layer.cornerRadius = newValue
            layer.masksToBounds = newValue > 0
        }
    }
}
