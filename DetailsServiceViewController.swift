//
//  DetailsServiceViewController.swift
//  iFavor
//
//  Created by Camila Bressan on 20/10/16.
//  Copyright © 2016 Camila Bressan. All rights reserved.
//

import Foundation
import UIKit

class DetailsServiceViewController: UIViewController {
    
    var service : Services?
    
    @IBOutlet weak var nameService: UILabel!
    @IBOutlet weak var nameUser: UILabel!
    @IBOutlet weak var address: UILabel!
    
    @IBOutlet weak var tableComments: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.setDetailsService()
    }
    
    func setDetailsService(){

        nameService.text = service?.service
        nameUser.text = service?.userService.name
        address.text = service?.address
        
        
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return service!.numberOfComments
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cellComment", forIndexPath: indexPath) as! CommentsTableViewCell
        
        let comments = service?.arrayComments[indexPath.row]
        
        cell.user.text = comments!.user.name
        cell.comments.text = comments!.comment
        cell.date.text = comments!.date
        
        return cell
    }
    
    
}