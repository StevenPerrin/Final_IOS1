//
//  ViewController.swift
//  Final_IOS1
//
//  Created by Steven Perrin on 5/9/19.
//  Copyright © 2019 Steven Perrin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var OutputDisplay: UILabel!
    
    @IBOutlet weak var InputDisplay: UILabel!
    
    var NumberShowing: Double = 0
    
    
    @IBAction func ClearButton(_ sender: UIButton) {
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func Numbers(_ sender: UIButton) {
        
        InputDisplay.text = InputDisplay.text! + String(sender.tag-1)
        NumberShowing = Double(InputDisplay.text!)!
    }

    @IBAction func Converter(_ sender: Any) {

        let alert = UIAlertController(title: "Converter", message: "Choose Converter", preferredStyle: .actionSheet)

        
        alert.addAction(UIAlertAction(title: "fahrenheit to celcius", style: .default, handler: {
            (alertAction)  in
            var convertedNumber = Double(self.InputDisplay.text!)!
            convertedNumber = convertedNumber * 9/5 + 32
            self.OutputDisplay.text = "\(convertedNumber)°C"
        }))

        alert.addAction(UIAlertAction(title: "celcius to fahrenheit", style: .default, handler: {
            (alertAction) in
            var convertedNumber = Double(self.InputDisplay.text!)!
            convertedNumber = convertedNumber * 9/5 - 32
            self.OutputDisplay.text = "\(convertedNumber)°C"
        }))

        alert.addAction(UIAlertAction(title: "miles to kilometers", style: .default, handler: {
            (alertAction) in
            var convertedNumber = Double(self.InputDisplay.text!)!
            convertedNumber = convertedNumber * 1.609
            self.OutputDisplay.text = "\(convertedNumber)km"
        }))

        alert.addAction(UIAlertAction(title: "kilometers to miles", style: .default, handler: {
            (alertAction) in
            var convertedNumber = Double(self.InputDisplay.text!)!
            convertedNumber = convertedNumber / 1.609
            self.OutputDisplay.text = "\(convertedNumber)mi"
        }))
        
        alert.addAction(UIAlertAction(title: "clear", style: .default, handler: {
            (alertAction) in
            self.InputDisplay.text = ""
            self.OutputDisplay.text = ""
        }))
        present(alert, animated: true, completion: nil)

    }
    
    
    
    
    
}

