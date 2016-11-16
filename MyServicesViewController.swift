//
//  MyServicesViewController.swift
//  iFavor
//
//  Created by Camila Bressan on 07/11/16.
//  Copyright © 2016 Camila Bressan. All rights reserved.
//

import Foundation
import UIKit

class MyServicesViewController: UIViewController {

    @IBOutlet weak var textLabel: UILabel!
    
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func indexSegmented(sender: UISegmentedControl) {
        
        switch segmentedControl.selectedSegmentIndex
        {
        case 0:
            NSLog("Popular selected")
        case 1:
            NSLog("Popular 123")

        default:
            break;
        }
        
    }
}
