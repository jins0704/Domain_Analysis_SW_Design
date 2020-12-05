//
//  AddViewController.swift
//  Project_mycar
//
//  Created by 홍진석 on 2020/11/24.
//  Copyright © 2020 홍진석. All rights reserved.
//


import UIKit

class AddViewController : UIViewController, UIPickerViewDelegate, UIPickerViewDataSource,UITextFieldDelegate {
    
    var whatCategory : String?
    var whatCategoryPeriod : Int?
    
    @IBOutlet weak var titleField: UITextField!
    @IBOutlet weak var DistanceField: UITextField!
    @IBOutlet weak var category: UIPickerView!
    
    var consumablesCategory = Array<ConsCategory>()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        consumablesCategory.append(ConsCategory(name: "Brake oil", period: 7000))
        consumablesCategory.append(ConsCategory(name: "Engine oil", period: 5500))
        consumablesCategory.append(ConsCategory(name: "Wiper", period: 10000))
        consumablesCategory.append(ConsCategory(name: "Battery", period: 4000))
        consumablesCategory.append(ConsCategory(name: "Air Cleaner", period: 92000))
        consumablesCategory.append(ConsCategory(name: "Wheel", period: 6000))
        consumablesCategory.append(ConsCategory(name: "Airconditional Filter", period: 3000))
        consumablesCategory.append(ConsCategory(name: "Coolant", period: 10000))
        consumablesCategory.append(ConsCategory(name: "Etc", period: 5000))
      
        category.delegate = self
        category.dataSource = self
        


    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return consumablesCategory.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return consumablesCategory[row].name
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        whatCategory = consumablesCategory[row].name
        whatCategoryPeriod = consumablesCategory[row].period
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool{
        titleField.resignFirstResponder()
        DistanceField.resignFirstResponder()
        return true
    }
    
}
