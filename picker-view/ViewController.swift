//
//  ViewController.swift
//  picker-view
//
//  Created by Victoria Mahoney on 2/28/22.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource
{
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return stringArray.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        stringArray[row]
    }

    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        view.endEditing(true)
        
        labelOutlet.isHidden = false
        
        switch row {
        case 0:
            labelOutlet.text = "English"
        case 1:
            labelOutlet.text = "Spanish"
        case 2:
            labelOutlet.text = "Polish"
        case 3:
            labelOutlet.text = "French"
        case 4:
            labelOutlet.text = "German"
        default:
            "No Segment Selected"
        }
    }
    @IBOutlet weak var pickerOutlet: UIPickerView!
    
    @IBOutlet weak var labelOutlet: UILabel!
    
    var stringArray: [String] = ["Hello","Hola","Czesc","Bonjour", "Guten Dag"]
    

    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        pickerOutlet.dataSource = self
        pickerOutlet.delegate = self
        labelOutlet.isHidden = true

    }

    

}

