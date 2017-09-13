//
//  ViewController.swift
//  calculator
//
//  Created by bmousa on 9/12/17.
//  Copyright © 2017 bmousa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    var numberDisplay:Double = 0;
    var previousNumber:Double = 0;
    var calcMath = false
    var op=0;
    @IBOutlet weak var label: UILabel!
   
    @IBAction func numbers(_ sender: UIButton)
    {
        if calcMath == true
        {
            if sender.tag==18
            {
                label.text=String(".")
            }
            else {
                
            label.text=String(sender.tag-1)
            numberDisplay = Double(label.text!)!
            calcMath=false
            }
        }
        else
        {
            if sender.tag==18
            {
                label.text=String(".")
            }
            else
            {
            label.text = label.text! + String(	sender.tag-1)
            numberDisplay = Double(label.text!)!
            }
        }
    }
    
    
    @IBAction func functionButtons(_ sender: UIButton)
    {
        if label.text != "" && sender.tag != 11 && sender.tag != 16
        {
            previousNumber=Double(label.text!)!
            
            if sender.tag == 12 //division
            {
                label.text = "/";
            }
            else if sender.tag == 13 //multiplication
            {
                label.text = "x";
            }
            else if sender.tag == 14 // addition
            {
                label.text = "+";
            }
            else if sender.tag == 15 // subtraction
            {
                label.text = "-";
            }
            else if sender.tag == 17 // negative
            {
                label.text="+/-"
            }
            op=sender.tag
            calcMath=true;
        }
        else if sender.tag == 16
        {
            if op == 12
            {
                label.text = String(previousNumber / numberDisplay)
            }
            else if op == 13
            {
                label.text = String(previousNumber * numberDisplay)
            }
            else if op == 14
            {
                label.text = String(previousNumber + numberDisplay)
            }
            else if op == 15
            {
                label.text = String(previousNumber - numberDisplay)
                    
            }
            else if op == 17
            {
                numberDisplay = numberDisplay * -1
                label.text="\(numberDisplay)"
            }
        }
        else if sender.tag==11
            {
            label.text=""
            previousNumber=0;
            numberDisplay=0;
            op=0;
        }
        
}



    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    

}


