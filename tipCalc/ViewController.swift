//
//  ViewController.swift
//  tipCalc
//
//  Created by Rujuta Joshipura on 12/14/15.
//  Copyright © 2015 RujutaJoshipura. All rights reserved.
//

import UIKit

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
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
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
        
        let numberP = people[peopleControl.selectedSegmentIndex]

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
            billText.center.y = 71
            BillT.center.x = 160
            BillT.center.y = 71
            billText.font = UIFont(name: billText.font!.fontName, size: 32)
        
        
        if let _ = billText.text
        {
            if billText.text == ""
            {
                billText.text="0.00"
            }
          
            
            let tipP = tips[tipSelect.selectedSegmentIndex]
            
            let tip = tipP * Double((billText?.text)!)!
            
            let total = tip + Double((billText?.text!)!)!
            
            tipLabel.text = String(format: "$%.2f",tip)
            
            totalLabel.text = String(format: "$%.2f",total)
            
            let amtPerP = total / Double(numberP)
            perPerson.text = String(format: "$%.2f", amtPerP)
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

