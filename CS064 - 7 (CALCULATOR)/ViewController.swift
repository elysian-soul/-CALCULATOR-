//
//  ViewController.swift
//  CS064 - 7 (CALCULATOR)
//
//  Created by APPLE on 18/11/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var screenLabel: UILabel!
    var numberOnScreeen:Double = 0
    var previousNumber:Double = 0
    var mathOperation = false
    var operation = 0
    
    @IBAction func numberButton(_ sender: UIButton) {
        if mathOperation == false
        {
            screenLabel.text = String(sender.tag-1)
            numberOnScreeen = Double(screenLabel.text!)!
            mathOperation = true
        }
        else
        {
            screenLabel.text = screenLabel.text! + String(sender.tag - 1)
            numberOnScreeen = Double(screenLabel.text!)!
        }
        
    }
    
    @IBAction func operationButtons(_ sender: UIButton) {
        if screenLabel.text != "" && sender.tag != 11 && sender.tag != 16
        {
            previousNumber = Double(screenLabel.text!)!
            if sender.tag == 12
            {
                screenLabel.text = "+"
            }
            else if sender.tag == 13
            {
                screenLabel.text = "-"
            }
            else if sender.tag == 14
            {
                screenLabel.text = "*"
            }
            else if sender.tag == 15
            {
                screenLabel.text = "/"
            }
            operation = sender.tag
            mathOperation = false
            
        }
        else if sender.tag == 16
        {
            if operation == 12
            { screenLabel.text = String(previousNumber + numberOnScreeen)
            }
            else if operation == 13
            {
                screenLabel.text = String(previousNumber - numberOnScreeen)
            }
            else if operation == 14
            {
                screenLabel.text = String(previousNumber * numberOnScreeen)
            }
            else if operation == 15
            {
                screenLabel.text = String(previousNumber / numberOnScreeen)
            }
            
        }
        else if sender.tag == 11
        {
            screenLabel.text = ""
            previousNumber = 0
            numberOnScreeen = 0
            operation = 0
        }
        
    }
    
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

