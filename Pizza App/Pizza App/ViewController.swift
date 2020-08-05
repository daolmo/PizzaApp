//
//  ViewController.swift
//  Pizza App
//
//  Created by Daniel Olmo on 8/3/20.
//  Copyright © 2020 Daniel Olmo. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var picker: UIPickerView!
    
    @IBOutlet weak var picker2: UIPickerView!
    
    var toppingData: [String] = [String]()
    var crustData: [String] = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        picker.delegate = self
        picker.dataSource = self
        
        picker2.delegate = self
        picker2.dataSource = self
        
        toppingData = ["Sausage", "Pepperoni", "Canadian Bacon", "Supreme", "Hawaiian", "Chicken Alfredo", "Veggie"]
        
        crustData = ["Stuffed", "Garlic Bread", "Flat", "Plain", "Pizza Bowl"]
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
        
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if pickerView.tag == 1 {
            return toppingData.count
        } else {
            return crustData.count
        }
    }

    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if pickerView.tag == 1 {
            return "\(toppingData[row])"
        } else {
            return "\(crustData[row])"
        }
    }

}

