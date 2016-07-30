//
//  SWLoadingSpinner.swift
//  SWLoadingSpinner
//
//  Created by 박성원 on 2016. 7. 30..
//  Copyright © 2016년 ParkSungWon. All rights reserved.
//

import UIKit

class SWLoadingSpinner: UIView {
    
    var shapeLayer:CAShapeLayer = CAShapeLayer()
    
    override func drawRect(rect: CGRect) {
        self.layer.addSublayer(self.shapeLayer)
        self.shapeLayer.lineCap = kCALineCapRound
        self.shapeLayer.lineWidth = 1.5
        
        self.shapeLayer.strokeColor = UIColor.orangeColor().CGColor
        self.shapeLayer.strokeStart = 0
        self.shapeLayer.strokeEnd = 0
    }

}
