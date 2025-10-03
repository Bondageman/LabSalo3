//
//  ViewController.swift
//  Lab3Salo
//
//  Created by ІПЗ-31/1 on 26.09.2025.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var picker: UIPickerView!
    @IBOutlet var myTextField: UITextField!
    
    let data = ["Розстріл", "Повішання", "Електричний стілець", "Смертельна ін'єкція", "Милисть Сі Нефритовий Стержень"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        picker.dataSource = self
        picker.delegate = self
        
    }
    
    @IBAction func TextStealer(_ sender: Any) {
        if let text = myTextField.text {
            let userInput = FormData(text: text)
            userInput.printData()
        }
    }
}

extension ViewController: UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return data.count
    }
}

extension ViewController: UIPickerViewDelegate {
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return data[row]
    }
}



class FormData {
    var text: String
    
    init(text: String) {
        self.text = text
    }
    
    func printData() {
        print("Донос: \(text)")
    }
}

