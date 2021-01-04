//
//  ViewController.swift
//  Project_mycar
//
//  Created by 홍진석 on 2020/11/24.
//  Copyright © 2020 홍진석. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func photoUpdate(_ sender: Any) {
        let photoController = UIImagePickerController()
        self.present(photoController, animated: true, completion: nil)
    }
    

}

