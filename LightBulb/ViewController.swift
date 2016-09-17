//
//  ViewController.swift
//  LightBulb
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var lightBulb: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lightBulb.backgroundColor = UIColor.red
    }
    
    @IBAction func colorSelected(_ sender: UISegmentedControl) {
        
        switch sender.selectedSegmentIndex {
        case 0:
            changeLightbulbColor(to: UIColor.red)
        case 1:
            changeLightbulbColor(to: UIColor.yellow)
        case 2:
            changeLightbulbColor(to: UIColor.blue)
        case 3:
            changeLightbulbColor(to: UIColor.green)
        default:
            changeLightbulbColor(to: UIColor.black)
        }
        
    }
    
    
    // Helper Function
    func changeLightbulbColor(to color: UIColor) {
        lightBulb.backgroundColor = color
    }
    
}
