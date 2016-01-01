//
//  SettingsViewController.swift
//  tips
//
//  Created by Kevin Asistores on 12/19/15.
//  Copyright © 2015 Kevin Asistores. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var defualtTipInput: UITextField!
    
    @IBOutlet weak var tipLabel: UILabel!
    
    let defaults = NSUserDefaults.standardUserDefaults()
    let percentsymbol = "%"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let ourString = defaults.stringForKey("default_tipper")
        
        tipLabel.text = ourString! + percentsymbol
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func saveButton(sender: AnyObject) {
        
        let doubleNum = NSString(string: defualtTipInput.text!).doubleValue
        
        let dividedNum = doubleNum / 100
        
        defaults.setDouble(doubleNum, forKey: "default_tipper")
        
        defaults.setDouble(dividedNum, forKey: "default_tip")
        
        let ourString = defaults.stringForKey("default_tipper")
        
        tipLabel.text = ourString! + percentsymbol

        defaults.synchronize()

    }
    
    @IBAction func inTap(sender: AnyObject) {
        view.endEditing(true)
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
