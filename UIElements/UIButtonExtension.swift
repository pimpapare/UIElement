//
//  UIButton_IBDesignable.swift
//  UIElements
//
//  Created by pimpaporn chaichompoo on 2/27/17.
//  Copyright © 2017 Pimpaporn Chaichompoo. All rights reserved.
//

import UIKit

@IBDesignable
class UIButtonExtension: UIButton {

    @IBInspectable var bgAlpha: CGFloat? = 0.4{ didSet { setBackgroundAlpha() }}
    @IBInspectable var color: UIColor? = UIColor.white{ didSet { setBackgroundAlpha() }}
    @IBInspectable var colorBorder: UIColor? = UIColor.red{ didSet { setBackgroundAlpha() }}
    @IBInspectable var borderWidth: CGFloat? = 1{ didSet { setBorder() }}

    func setBackgroundAlpha() {
        
        self.backgroundColor = color?.withAlphaComponent(bgAlpha!)
    }
    
    func setBorder(){
        
        self.layer.borderWidth = borderWidth!
        self.layer.borderColor = colorBorder?.cgColor
    }
    
    override func layoutIfNeeded() {
        super.layoutSubviews()
        setBackgroundAlpha()
        setBorder()
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
