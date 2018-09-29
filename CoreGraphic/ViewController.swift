//
//  ViewController.swift
//  CoreGraphic
//
//  Created by Hay Tran Van on 9/28/18.
//  Copyright © 2018 Hay Tran Van. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var counterView: CounterView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func addAction(_ sender: Any) {
        print("addAction")
        if (counterView.counter < counterView.numberOfItems) {
            counterView.counter = counterView.counter + 1
        }
    }
    
    @IBAction func subAction(_ sender: Any) {
        print("subAction")
        if (counterView.counter > 0) {
            counterView.counter = counterView.counter - 1
        }
    }
    
}

