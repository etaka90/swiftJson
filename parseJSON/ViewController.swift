//
//  ViewController.swift
//  parseJSON
//
//  Created by Евгений Демченко on 21.02.2021.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       
        let data = DataLoader().userData
        print(data)
    }
}


