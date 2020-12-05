//
//  Car.swift
//  Project_mycar
//
//  Created by 유영우 on 2020/12/06.
//  Copyright © 2020 홍진석. All rights reserved.
//

import Foundation

class Car {
    var carName : String?
    var carID : String?
    var brand : String?
    var model : String?
    var fuelType : String?
    
    init(carName : String, carID : String, brand : String, model : String, fuelType : String){
        self.carName = carName
        self.carID = carID
        self.brand = brand
        self.model = model
        self.fuelType = fuelType
    }
}
