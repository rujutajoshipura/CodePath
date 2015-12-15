//
//  SettingsViewController.swift
//  tipCalc
//
//  Created by Rujuta Joshipura on 12/14/15.
//  Copyright © 2015 RujutaJoshipura. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    
    @IBOutlet weak var labell: UILabel!
   
    @IBOutlet weak var slider2: UISlider!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBOutlet weak var defTip: UILabel!
    
    @IBOutlet weak var sllider: UISlider!
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let Dest : ViewController = segue.destinationViewController as! ViewController
        
        if defTip.text == "18"
        {
            Dest.tips1 = 1
            
        }
        else if defTip.text == "20"
        {
          
            Dest.tips1 = 2     }
        else if defTip.text == "25"
        {
            Dest.tips1 = 3
        }
        if labell.text == "1"
        {
            Dest.p1 = 1
        }
        else if labell.text == "2"
        {
            Dest.p1 = 2
            
        }
        else if labell.text == "3"
        {
            Dest.p1 = 3
        }
        else if labell.text == "4"
        {
            Dest.p1 = 4
        }
        else if labell.text == "5"
        {
            Dest.p1 = 5
        }


        
    }
   
    @IBAction func valCh(sender: AnyObject) {
        let val1 = Int(slider2.value)
        if val1 == 1
        {
            defTip.text = "18"
        }
        
        else if val1 == 2
        {
            defTip.text = "20"
        }
        
        else if val1 == 3
        {
            defTip.text = "25"
        }
    }
  
    @IBAction func valChanged(sender: AnyObject) {
        let val = Int(sllider.value)
        labell.text = "\(val)"
    }
   
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
