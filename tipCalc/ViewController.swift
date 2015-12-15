//
//  ViewController.swift
//  tipCalc
//
//  Created by Rujuta Joshipura on 12/14/15.
//  Copyright © 2015 RujutaJoshipura. All rights reserved.
//

import UIKit
var defaultTip = 18
class ViewController: UIViewController {

    @IBOutlet weak var BillT: UILabel!
    @IBOutlet weak var PerP: UILabel!
    @IBOutlet weak var TotalL: UILabel!
    @IBOutlet weak var tipL: UILabel!
    @IBOutlet weak var perPerson: UILabel!
    @IBOutlet weak var peopleControl: UISegmentedControl!
    @IBOutlet weak var tipSelect: UISegmentedControl!
    @IBOutlet weak var billText: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    var tips1 :Int = 0
    var tips2 : Int = 0
    var p1 : Int = 0
    var p2 : Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
       /* let toolbar = UIToolbar()
        toolbar.frame = CGRectMake(0, self.view.frame.size.height - 46, self.view.frame.size.width, 46)
        toolbar.sizeToFit()
       
        toolbar.backgroundColor = UIColor.redColor()
        self.view.addSubview(toolbar)*/
        tipLabel.text = "$0.00"
        totalLabel.text = "$0.00"
        PerP.hidden = true
        tipL.hidden = true
        TotalL.hidden = true
        tipLabel.hidden = true
        totalLabel.hidden = true
        tipSelect.hidden = true
        peopleControl.hidden = true
        perPerson.hidden = true
        billText.font = UIFont(name: billText.font!.fontName, size: 29)
        BillT.font = UIFont(name: BillT.font!.fontName, size: 29)
        
        
        billText.center.x = 160
        billText.center.y = 289
        BillT.center.x = 180
        BillT.center.y = 221
    }

 
    @IBAction func changingAmt(sender: AnyObject) {
        
        var tips = [0.18,0.2,0.25]
        var people = [1,2,3,4,5]
        var numberP = 0
    
        if p1 == 0
        {
            
            numberP = people[peopleControl.selectedSegmentIndex]
        }
        else
        {
  
            numberP = people[p1-1]
            peopleControl.selectedSegmentIndex = p1-1
        }

        if billText.text == "" || billText.text == "0.00"
        {
            PerP.hidden = true
            tipL.hidden = true
            TotalL.hidden = true
            tipLabel.hidden = true
            totalLabel.hidden = true
            tipSelect.hidden = true
            peopleControl.hidden = true
            perPerson.hidden = true
            billText.font = UIFont(name: billText.font!.fontName, size: 29)
            BillT.font = UIFont(name: BillT.font!.fontName, size: 29)
            billText.center.x = 160
            billText.center.y = 289
            BillT.center.x = 180
            BillT.center.y = 221
            
            tips1 = tips2
   
            p1 = p2
            print(p1)
            
        }
        else
        {
            PerP.hidden = false
            tipL.hidden = false
            TotalL.hidden = false
            tipLabel.hidden = false
            totalLabel.hidden = false
            tipSelect.hidden = false
            peopleControl.hidden = false
            perPerson.hidden = false
            billText.font = UIFont(name: billText.font!.fontName, size: 17)
            BillT.font = UIFont(name: BillT.font!.fontName, size: 17)
            billText.center.x = 250
            billText.center.y = 101
            BillT.center.x = 160
            BillT.center.y = 101
            billText.font = UIFont(name: billText.font!.fontName, size: 32)
        
        
        if let _ = billText.text
        {
            if billText.text == ""
            {
                billText.text="0.00"
            }
          var tipP = 0.0
            if tips1 == 0
            {
                tipP = tips[tipSelect.selectedSegmentIndex]
            }
            else
            {
                
                tipP = tips[tips1-1]
                tipSelect.selectedSegmentIndex = tips1-1
            }
            
            let tip = tipP * Double((billText?.text)!)!
            
            let total = tip + Double((billText?.text!)!)!
            
            tipLabel.text = String(format: "$%.2f",tip)
            
            totalLabel.text = String(format: "$%.2f",total)
            
            let amtPerP = total / Double(numberP)
            perPerson.text = String(format: "$%.2f", amtPerP)
            if(tips1 == 0)
            {
                tips1 = 0
            }
            else
            {
                tips2 = tips1
                tips1 = 0
            }
            if(p1 == 0)
            {
                p1 = 0
            }
            else
            {
                p2 = p1
                p1 = 0
            }
            if billText.text == "0.00"
            {
                billText.text = ""
            }
            
        }
        }
        
       }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

   
    @IBAction func removeKB(sender: AnyObject) {
        view.endEditing(true)
    }

}

