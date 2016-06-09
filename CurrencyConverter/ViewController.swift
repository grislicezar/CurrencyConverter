//
//  ViewController.swift
//  CurrencyConverter
//
//  Created by grisli on 07/06/16.
//  Copyright © 2016 grisli. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    let poundRate = 0.69
    let yenRate = 113.94
    let euroRate = 0.89
    var dollarAmount = 0.0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        inputTextField.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func convertCurrency(sender: UIButton) {
        
        if let amount = Double(inputTextField.text!){
            dollarAmount = amount
        }
        
        euroLabel.text = "\(dollarAmount * euroRate)"
        poundLabel.text = "\(dollarAmount * poundRate)"
        yenLabel.text = "\(dollarAmount * yenRate)"
        
    }
    
    @IBAction func clearButton(sender: UIButton) {
        
        inputTextField.text = nil
        dollarAmount = 0.00
        euroLabel.text = "\(dollarAmount * euroRate)"
        poundLabel.text = "\(dollarAmount * poundRate)"
        yenLabel.text = "\(dollarAmount * yenRate)"
        
    }
    
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        view.endEditing(true)
    }
    
    @IBOutlet weak var euroLabel: UILabel!
    
    @IBOutlet weak var poundLabel: UILabel!
    
    @IBOutlet weak var yenLabel: UILabel!
    
    @IBOutlet weak var inputTextField: UITextField!
}

