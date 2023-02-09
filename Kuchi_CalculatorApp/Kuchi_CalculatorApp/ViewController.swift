//
//  ViewController.swift
//  Kuchi_CalculatorApp
//
//  Created by Kuchi,Yudu Eswar Vinay Pratap Kumar on 2/9/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    var operand1 = ""
    var operand2 = ""
    var result = ""
    var _operator = ""
    
    @IBOutlet weak var resultOutlet: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //resultOutlet.text = "0"
    }

    @IBAction func buttonAllClear(_ sender: UIButton) {
        operand1 = ""
        operand2 = ""
        result = ""
        _operator = ""
        resultOutlet.text = ""
        
    }
    
    
    @IBAction func buttonClear(_ sender: UIButton) {
        
        if(!operand1.isEmpty){
            operand1.removeLast()
            resultOutlet.text = operand1
        }
        else{
            operand2.removeLast()
            resultOutlet.text = operand2
        }
        
    }
    
    @IBAction func buttonPlusMinus(_ sender: UIButton) {
        let plusMinus = resultOutlet.text!
                var total = (plusMinus as NSString).doubleValue
                if(total > 0){
                    total = total * -1;
                    let std = String(format: "%.0f", total)
                    resultOutlet.text = std;
     
                }
                else{
                    total = total * -1;
                    let std = String(format: "%.0f", total)
                    resultOutlet.text = std;
        
    }
    }
    
    
    @IBAction func buttonDivision(_ sender: UIButton) {
        operand1 = resultOutlet.text!
        _operator = "/"
        resultOutlet.text! = ""
    }
    
    
    
    @IBAction func buttonMultiplication(_ sender: UIButton) {
        operand1 = resultOutlet.text!
        _operator = "*"
        resultOutlet.text! = ""
    }
    
    
    @IBAction func buttonMinus(_ sender: UIButton) {
        operand1 = resultOutlet.text!
        _operator = "-"
        resultOutlet.text! = ""
        
    }
    
    @IBAction func buttonPlus(_ sender: UIButton) {
        operand1 = resultOutlet.text!
        _operator = "+"
        resultOutlet.text! = ""
    }
    
    @IBAction func buttonEquals(_ sender: UIButton) {
        operand2 = resultOutlet.text!
        if _operator == "+"{
            result = String(Int(Double(operand1)! + Double(operand2)!))
            resultOutlet.text  = result
        }
        else if _operator == "-"{
            result = String(Int(Double(operand1)! - Double(operand2)!))
            resultOutlet.text  = result
        }
        else if _operator == "*"{
            result = String(Int(Double(operand1)! * Double(operand2)!))
            resultOutlet.text  = result
        }
        else if _operator == "/"{
            
            if (Bool(operand1 == "0" && operand2 == "1") || Bool(operand1 == "1" && operand2 == "0") ) {
                resultOutlet.text = "Not a number"
            }
            else{
                result = String((Double(operand1)! / Double(operand2)!))
                let roundedValue = round(Double(result)! * 100000)/100000.0
                resultOutlet.text  = String(roundedValue)
            }
            
        }
        else if _operator == "%"{
            let op1 = Double(operand1)!
            let op2 = Double(operand2)!
            
            let res = op1.remainder(dividingBy: op2)
            
            let roundedValueMod = round(res * 100)/100.0
            resultOutlet.text = String(roundedValueMod)
            
            
        }
        else{
            resultOutlet.text = "Not a Valid Operation"
        }
    }
    
    @IBAction func buttonModulo(_ sender: UIButton) {
        operand1 = resultOutlet.text!
        _operator = "%"
        resultOutlet.text! = ""
    }
    
    @IBAction func buttonDecimals(_ sender: UIButton) {
        resultOutlet.text = resultOutlet.text! + "."
        
    }
    
    @IBAction func buttonZero(_ sender: UIButton) {
        
        resultOutlet.text = resultOutlet.text! + "0"
    }
    
    @IBAction func buttonOne(_ sender: UIButton) {
        resultOutlet.text = resultOutlet.text! + "1"
    }
    
    @IBAction func buttonTwo(_ sender: UIButton) {
        resultOutlet.text = resultOutlet.text! + "2"
    }
    
    @IBAction func buttonThree(_ sender: UIButton) {
        resultOutlet.text = resultOutlet.text! + "3"
    }
    
    @IBAction func buttonFour(_ sender: UIButton) {
        resultOutlet.text = resultOutlet.text! + "4"
    }
    
    @IBAction func buttonFive(_ sender: UIButton) {
        resultOutlet.text = resultOutlet.text! + "5"
    }
    
    @IBAction func buttonSix(_ sender: UIButton) {
        resultOutlet.text = resultOutlet.text! + "6"
    }
    
    @IBAction func buttonSeven(_ sender: UIButton) {
        resultOutlet.text = resultOutlet.text! + "7"
    }
    
    @IBAction func buttonEight(_ sender: UIButton) {
        resultOutlet.text = resultOutlet.text! + "8"
    }
    
    @IBAction func buttonNine(_ sender: UIButton) {
        resultOutlet.text = resultOutlet.text! + "9"
    }
    
    
    
    
    
    
    
}

