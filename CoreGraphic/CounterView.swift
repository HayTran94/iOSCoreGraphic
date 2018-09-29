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
    
    @IBInspectable var counter: Int = 5
    @IBInspectable var outlineColor: UIColor = UIColor.blue
    @IBInspectable var counterColor: UIColor = UIColor.orange
    
    override func draw(_ rect: CGRect) {
        
    }
}
