//
//  UIImageView_IBDesignable.swift
//  UIElements
//
//  Created by pimpaporn chaichompoo on 2/27/17.
//  Copyright © 2017 Pimpaporn Chaichompoo. All rights reserved.
//

import UIKit

@IBDesignable
class UIImageView_IBDesignable: UIImageView {

    @IBInspectable var imageColor: UIColor? = UIColor.gray{ didSet { setTintImage() }}

    func setTintImage() {
        
        let tintedImage = image?.withRenderingMode(.alwaysTemplate)
        self.image = tintedImage
        self.tintColor = imageColor
    }
}