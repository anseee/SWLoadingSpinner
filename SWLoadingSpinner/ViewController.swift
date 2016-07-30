//
//  ViewController.swift
//  SWLoadingSpinner
//
//  Created by 박성원 on 2016. 7. 30..
//  Copyright © 2016년 ParkSungWon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var shape :SWLoadingSpinner = SWLoadingSpinner()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        self.shape.shapeLayer.lineWidth = 2.0;
        self.shape.shapeLayer.strokeColor = UIColor.orangeColor().CGColor
        self.view.addSubview(self.shape)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

