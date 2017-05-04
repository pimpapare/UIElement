//
//  ViewController.swift
//  UIElements
//
//  Created by pimpaporn chaichompoo on 2/27/17.
//  Copyright © 2017 Pimpaporn Chaichompoo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var btnTest: UIButtonExtension!
    var showactivity:Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let baseFunction:BaseFunction = BaseFunction()
        print("check internet connection %@",baseFunction.isInternetAvailable())
        
    }
    
    @IBAction func btnTestPressed(_ sender: Any) {
        btnTest.loadingIndicator(show: true)
        self.perform(#selector(resetLoading), with: nil, afterDelay: 2)
    }
    
    func resetLoading(){
        btnTest.loadingIndicator(show: false)
    }
}

