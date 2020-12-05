//
//  ConsumablesCell.swift
//  Project_mycar
//
//  Created by 홍진석 on 2020/11/24.
//  Copyright © 2020 홍진석. All rights reserved.
//

import UIKit

class ConsumablesCell : UITableViewCell {
    
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var detail: UILabel!
    
 
    override func setSelected(_ selected: Bool, animated : Bool){
        super.setSelected(selected, animated: animated)
    }
}
