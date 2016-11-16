//
//  Sigleton.swift
//  iFavor
//
//  Created by Camila Bressan on 14/10/16.
//  Copyright © 2016 Camila Bressan. All rights reserved.
//

import Foundation

class Singleton {
    
    static let sharedInstance = Singleton()
    
    private init(){}

    var arrayUsers = [User]()
    var numberOfUsers : Int{
        return arrayUsers.count
    }
    
    var arrayServices = [Services]()
    var numberOfServices : Int{
        return arrayServices.count
    }
    
    
    
    func created() {
        let user1 = User()
        user1.name = "Camila Bressan"
        user1.address = "Rua professor Cristiano Fischer 1168"
        user1.email = "camila@hotmail.com"
        user1.phone = "98987689"
        Singleton.sharedInstance.arrayUsers.append(user1)
        
        let user2 = User()
        user2.name = "Paula Bernadinelli"
        user2.address = "Avenida Ipiranga 2893"
        user2.email = "paula@hotmail.com"
        user2.phone = "97890987"
        Singleton.sharedInstance.arrayUsers.append(user2)
        
        let user3 = User()
        user3.name = "Bruno Ribeiro"
        user3.address = "Avenida Ipiranga 2343"
        user3.email = "bruno@hotmail.com"
        user3.phone = "99990088"
        Singleton.sharedInstance.arrayUsers.append(user3)
        
        let comment1 = Comments()
        comment1.user = user2
        comment1.comment = "Adorei o serviço!! Recomendo pessoal :)"
        comment1.date = "20/09/2017"
        
        let service1 = Services()
        service1.service = "Jardinagem"
        service1.address = "Rua professor Cristiano Fischer 1168"
        service1.user = user1
        service1.userService = user2
        Singleton.sharedInstance.arrayServices.append(service1)

        let service2 = Services()
        service2.service = "Pintura"
        service2.address = "Rua professor Cristiano Fischer 1168"
        service2.user = user2
        service2.userService = user1
        service2.arrayComments.append(comment1)
        Singleton.sharedInstance.arrayServices.append(service2)
        
        
    }
    
}