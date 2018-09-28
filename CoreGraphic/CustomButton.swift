//
//  CustomButton.swift
//  CoreGraphic
//
//  Created by Hay Tran Van on 9/28/18.
//  Copyright © 2018 Hay Tran Van. All rights reserved.
//

import Foundation
import UIKit

@IBDesignable
class CustomButton: UIButton {
    
    @IBInspectable var fillColor: UIColor = UIColor.red
    @IBInspectable var isAddButton : Bool = true
    
    override func draw(_ rect: CGRect) {
        let path = UIBezierPath(ovalIn: rect)
        fillColor.setFill()
        path.fill()
        drawSign()
    }
    
    func drawSign() {
        let dashWidth: CGFloat = min(bounds.width, bounds.height) * 0.6
        let dashHeight: CGFloat = 3
        let dashPath = UIBezierPath()
        dashPath.lineWidth = dashHeight
        dashPath.move(to: CGPoint(x: bounds.width/2 - dashWidth/2, y: bounds.height/2))
        dashPath.addLine(to: CGPoint(x: bounds.width/2 + dashWidth/2, y: bounds.height/2))
        UIColor.white.setStroke()
        dashPath.stroke()
    }
    
    func drawDashWidth() {
        
    }
}
