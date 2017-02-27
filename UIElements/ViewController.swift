//
//  ViewController.swift
//  UIElements
//
//  Created by pimpaporn chaichompoo on 2/27/17.
//  Copyright © 2017 Pimpaporn Chaichompoo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var test_image: UIImageView!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
            }
   
   	
    func getTintedImage() -> UIImageView {
        
        var image     : UIImage;
        var imageView : UIImageView;
        
        image = UIImage(named: "ic_cancel_48pt")!;
        let size  : CGSize = image.size;
        let frame : CGRect = CGRect(x:(UIScreen.main.bounds.width-86)/2,y: 600,width: size.width,height: size.height);
        
        let redCover : UIView = UIView(frame: frame)
        
        redCover.backgroundColor = UIColor.red
        redCover.layer.opacity = 0.75;

        imageView       = UIImageView();
        imageView.image = image.withRenderingMode(UIImageRenderingMode.automatic);
        
        imageView.addSubview(redCover);
        
        return imageView;
    }
}

