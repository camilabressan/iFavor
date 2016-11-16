//
//  Services.swift
//  iFavor
//
//  Created by Camila Bressan on 14/10/16.
//  Copyright © 2016 Camila Bressan. All rights reserved.
//

import Foundation
import UIKit

class Services {
    
    var service : String!
    var address : String!
    var user : User!
    var userService : User!    
    
    var arrayComments = [Comments]()
    var numberOfComments : Int{
        return arrayComments.count
    }
}