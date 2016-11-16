//
//  ViewController.swift
//  iFavor
//
//  Created by Camila Bressan on 14/10/16.
//  Copyright © 2016 Camila Bressan. All rights reserved.
//

import Foundation
import UIKit


class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Singleton.sharedInstance.numberOfServices
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as! ServiceDetailsTableViewCell
        
        let service = Singleton.sharedInstance.arrayServices[indexPath.row]
        
        cell.service.text = service.service
        cell.user.text = service.userService.name
        
            return cell
    }
    
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        self.performSegueWithIdentifier("showSegue", sender: nil)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "showSegue" {
            if let nextController = segue.destinationViewController as? DetailsServiceViewController {
                
                let path = tableView.indexPathForSelectedRow

                nextController.service = Singleton.sharedInstance.arrayServices[path!.row]
            }
        }
    }


}

