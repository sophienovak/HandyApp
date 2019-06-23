
//
//  CalculatorController.swift
//  Assignment
//
//  Created by Sophie Novak on 08/01/2018.
//  Copyright © 2018 Sophie Novak. All rights reserved.
//

import UIKit
import CoreData

class CalculatorViewController: UIViewController {
    
    @IBOutlet weak var Txt1: UITextField!
    
    @IBOutlet weak var Txt2: UITextField!
    
    @IBOutlet weak var Equal: UILabel!
    
    @IBAction func Add(_ sender: Any) {
        var number1:Double
        var number2:Double
        var total:Double
        number1=Double(Txt1.text!)!
        number2=Double(Txt2.text!)!
        total=number1 + number2
        Equal.text=String(total)
    }
    
    @IBAction func Subtract(_ sender: Any) {
        var number1:Double
        var number2:Double
        var total:Double
        number1=Double(Txt1.text!)!
        number2=Double(Txt2.text!)!
        total=number1 - number2
        Equal.text=String(total)
    }
    
    @IBAction func Multiply(_ sender: Any) {
        var number1:Double
        var number2:Double
        var total:Double
        number1=Double(Txt1.text!)!
        number2=Double(Txt2.text!)!
        total=number1 * number2
        Equal.text=String(total)
    }
    
    @IBAction func Divide(_ sender: Any) {
        var number1:Double
        var number2:Double
        var total:Double
        number1=Double(Txt1.text!)!
        number2=Double(Txt2.text!)!
        total=number1 / number2
        Equal.text=String(total)    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}
