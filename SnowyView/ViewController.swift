//
//  ViewController.swift
//  SnowyView
//
//  Created by Rawand Ahmed Shaswar on 12/25/17.
//  Copyright © 2017 DC Middle East. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.addSnow(Interval: 0.5)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

