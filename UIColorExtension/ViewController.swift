//
//  ViewController.swift
//  ColorExtension
//
//  Created by Steven Lipton on 5/15/18.
//  Copyright © 2018 Steven Lipton. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        view.backgroundColor = .yellow
    }
    
     func hexColor(_ hexColorNumber:UInt32, alpha: CGFloat) -> UIColor {
        let red = (hexColorNumber & 0xff0000) >> 16
        let green = (hexColorNumber & 0x00ff00) >> 8
        let blue =  (hexColorNumber & 0x0000ff)
        return UIColor(red: CGFloat(red) / 255, green: CGFloat(green) / 255, blue: CGFloat(blue) / 255, alpha: alpha)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

