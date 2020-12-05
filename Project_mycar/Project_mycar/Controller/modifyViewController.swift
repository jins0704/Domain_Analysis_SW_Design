//
//  modifyViewController.swift
//  Project_mycar
//
//  Created by 홍진석 on 2020/11/30.
//  Copyright © 2020 홍진석. All rights reserved.
//

import Foundation
import UIKit

class modifyViewController : UIViewController{
    var label : String?
    var namefield : String?
    var distance : Int?
    
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var distanceField: UITextField!
    @IBOutlet weak var CategoryLabel: UILabel!
    
    override func viewDidLoad() {
        CategoryLabel.text = label!
        nameField.text = namefield!
        distanceField.text = String(distance!)
        
        super.viewDidLoad()
    }
    
    @IBAction func modifySuccess(_ sender: Any) {
        namefield = nameField.text
        if distanceField.text != nil{
             distance = Int(distanceField.text!)
        }
    }
    
    
}
