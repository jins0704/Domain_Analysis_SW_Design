//
//  manageViewController.swift
//  Project_mycar
//
//  Created by 홍진석 on 2020/11/24.
//  Copyright © 2020 홍진석. All rights reserved.
//

import Foundation
import UIKit

var consumablesList = Array<Consumables>()
var selectNum : Int?

class manageViewController : UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    override func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return consumablesList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for : indexPath) as! ConsumablesCell
        let rows = consumablesList[indexPath.row]
        cell.name?.text = rows.name
        let bun = Double(rows.dist!)
        let su = Double(rows.maxPeriod!)
        if bun < su {
            let result = (bun/su)*100
            let resultString = String(format: "%.1f", result)
            cell.detail?.text = "\(resultString)%"
        }else{
            cell.detail?.text = "Change!"
        }
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            consumablesList.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
        else if editingStyle == .insert {
        }
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        NSLog("Touch Table Row at %d", indexPath.row)
        selectNum = indexPath.row
        performSegue(withIdentifier: "modifyInfo", sender: nil)
    }

    @IBAction func unwindToMainViewController(segue : UIStoryboardSegue){
    }
    @IBAction func unwindToAddController(segue : UIStoryboardSegue){
        let before = segue.source as! AddViewController
        let textname = before.titleField.text!
        let distance = before.DistanceField.text!
        
        var categoryperiod = -100
        var categoryname = ""
        if before.whatCategoryPeriod != nil{
             categoryperiod = before.whatCategoryPeriod!
        }else{
        }
        if before.whatCategory != nil{
             categoryname = before.whatCategory!
        }else{
        }
        
        guard let d = Int(distance)else {
            return
        }
        if categoryperiod < 0 {
            return
        }
        let c = Consumables(name: textname, dist: d, maxPeriod: categoryperiod, detail: distance, categoryN: categoryname)
       
        consumablesList.append(c)
        self.tableView.reloadData()
    }
    
    @IBAction func unwindModify(segue : UIStoryboardSegue){
        let before2 = segue.source as! modifyViewController
        consumablesList[selectNum!].name = before2.namefield
        consumablesList[selectNum!].dist = before2.distance
        self.tableView.reloadData()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "modifyInfo" {
            if let destVC = segue.destination as? modifyViewController{
                destVC.label = consumablesList[selectNum!].categoryN
                destVC.namefield = consumablesList[selectNum!].name
                destVC.distance = consumablesList[selectNum!].dist
            }
        }
    }
}

