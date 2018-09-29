//
//  CounterView.swift
//  CoreGraphic
//
//  Created by Hay Tran Van on 9/29/18.
//  Copyright © 2018 Hay Tran Van. All rights reserved.
//

import Foundation
import UIKit

@IBDesignable class CounterView: UIView {
    let numberOfItems = 8
    let pi: CGFloat = CGFloat.pi
    
    @IBInspectable var counter: Int = 5 {
        didSet {
            setNeedsDisplay()
        }
    }
    @IBInspectable var outlineColor: UIColor = UIColor.red
    @IBInspectable var counterColor: UIColor = UIColor.green
    
    override func draw(_ rect: CGRect) {
        let center = CGPoint(x: bounds.width/2, y: bounds.height/2)
        let radius: CGFloat = min(bounds.width, bounds.height)
        let arcWidth: CGFloat = 1/3*radius
        
        // check out "unit circle"
        let startAngle: CGFloat = 3*pi/4
        let endAngle: CGFloat = pi/4
        
        drawArc(center: center, radius: radius, startAngle: startAngle, endAngle: endAngle, arcWidth: arcWidth)
        drawOutline(center: center, radius: radius, startAngle: startAngle, endAngle: endAngle, arcWidth: arcWidth)
    }
    
    private func drawArc(center: CGPoint, radius: CGFloat, startAngle: CGFloat, endAngle: CGFloat, arcWidth: CGFloat) {
        let path = UIBezierPath(arcCenter: center, radius: radius/2 - arcWidth/2, startAngle: startAngle, endAngle: endAngle, clockwise: true)
        path.lineWidth = arcWidth
        counterColor.setStroke()
        path.stroke()
    }
    
    private func drawOutline(center: CGPoint, radius: CGFloat, startAngle: CGFloat, endAngle: CGFloat, arcWidth: CGFloat) {
        let angleDifferrence: CGFloat = 2*pi - startAngle + endAngle
        let arcLengthPerItem = angleDifferrence / CGFloat(numberOfItems)
        let outlineEndAngle = arcLengthPerItem * CGFloat(counter) + startAngle
        let outlineArcWidth: CGFloat = 5
        
        // Create outer outline's line path
        let outlinePath = UIBezierPath(arcCenter: center, radius: radius/2 - outlineArcWidth/2, startAngle: startAngle, endAngle: outlineEndAngle, clockwise: true)
        // Add inner outline's line path to "outlinePath" serially
        outlinePath.addArc(withCenter: center, radius: radius/2 - arcWidth + outlineArcWidth/2, startAngle: outlineEndAngle, endAngle: startAngle, clockwise: false)
        // Connect arc
        outlinePath.close()
        
        outlineColor.setStroke()
        outlinePath.lineWidth = outlineArcWidth
        outlinePath.stroke()
    }
}
