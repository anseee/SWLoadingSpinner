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
        self.frame = CGRectMake(0, 0, 40, 40)
        self.layer.addSublayer(self.shapeLayer)
        self.shapeLayer.lineCap = kCALineCapRound
        self.shapeLayer.lineWidth = 1.5
        
        self.shapeLayer.strokeColor = UIColor.orangeColor().CGColor
        self.shapeLayer.strokeStart = 0
        self.shapeLayer.strokeEnd = 0
    }

    override func layoutSubviews() {
        if !CGRectEqualToRect(self.shapeLayer.frame, self.bounds) {
            self.updateShapeLayer()
        }
    }
    
    func updateShapeLayer() {
        let center: CGPoint = CGPoint(x: self.bounds.size.width / 2, y: self.bounds.size.height / 2)
        let radius: CGFloat = CGRectGetHeight(self.bounds) / 2 - self.shapeLayer.lineWidth / 2
        let startAngle: CGFloat = 0.0
        let endAngle: CGFloat = 2.0 * CGFloat(M_PI)
        
        let path:UIBezierPath = UIBezierPath(arcCenter: center,
                                             radius: radius,
                                             startAngle: startAngle,
                                             endAngle: endAngle,
                                             clockwise: true)
        
        self.shapeLayer.path = path.CGPath
        self.shapeLayer.frame = self.bounds
    }
}
