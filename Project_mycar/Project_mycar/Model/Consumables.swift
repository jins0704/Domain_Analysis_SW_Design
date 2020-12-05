//
//  Consumables.swift
//  Project_mycar
//
//  Created by 홍진석 on 2020/11/24.
//  Copyright © 2020 홍진석. All rights reserved.
//

import Foundation

class Consumables {
    var name : String?
    var dist : Int?
    var maxPeriod : Int?
    var detail : String?
    var categoryN : String?
    
    init(name : String, dist : Int, maxPeriod : Int, detail : String, categoryN : String){
        self.name = name
        self.dist = dist
        self.maxPeriod = maxPeriod
        self.detail = detail
        self.categoryN = categoryN
    }
}
