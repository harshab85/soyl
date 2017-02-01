//
//  Account.swift
//  soyl
//
//  Created by Harsha Bala on 2017-02-01.
//  Copyright © 2017 HappyPup. All rights reserved.
//

import Foundation

class Account{
    
    var nickname:String = ""
    var email:String = ""
    var budget:Float = 0
    
    init(nickname:String, email:String, budget:Float){
        self.budget = budget
        self.nickname = nickname
        self.email = email
    }
    
}