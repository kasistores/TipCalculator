//
//  ViewController.swift
//  tips
//
//  Created by Kevin Asistores on 12/12/15.
//  Copyright © 2015 Kevin Asistores. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var onePerson: UILabel!
    @IBOutlet weak var twoPerson: UILabel!
    @IBOutlet weak var threePerson: UILabel!
    @IBOutlet weak var fourPerson: UILabel!
    @IBOutlet weak var morePerson: UILabel!
    @IBOutlet weak var morePrice: UILabel!
    @IBOutlet weak var fourPrice: UILabel!
    @IBOutlet weak var threePrice: UILabel!
    @IBOutlet weak var twoPrice: UILabel!
    @IBOutlet weak var onePrice: UILabel!
    @IBOutlet weak var myStepper: UIStepper!
    let defaults = NSUserDefaults.standardUserDefaults()
    
    @IBOutlet weak var refreshbutton: UIButton!
    @IBOutlet weak var img1: UIImageView!
    @IBOutlet weak var img3: UIImageView!
    @IBOutlet weak var img2: UIImageView!
    @IBOutlet weak var img4: UIImageView!
    @IBOutlet weak var img5: UIImageView!
    @IBOutlet weak var img6: UIImageView!
    @IBOutlet weak var img7: UIImageView!
    @IBOutlet weak var img8: UIImageView!
    @IBOutlet weak var img9: UIImageView!
    @IBOutlet weak var img10: UIImageView!
    @IBOutlet weak var img11: UIImageView!
    var total: Double = 0.0
    var tipValue: Double = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        billField.becomeFirstResponder()
        defaults.synchronize()
        tipLabel.text = "$0.00"
        onePrice.text = "$0.00"
        twoPrice.text = "$0.00"
        threePrice.text = "$0.00"
        fourPrice.text = "$0.00"
        morePrice.text = "$0.00"
        morePerson.text = "5"
        self.title = "Tipster"
        self.img1.image = UIImage(named: "stormtrooper")
        self.img2.image = UIImage(named: "stormtrooper")
        self.img3.image = UIImage(named: "stormtrooper")
        self.img4.image = UIImage(named: "stormtrooper")
        self.img5.image = UIImage(named: "stormtrooper")
        self.img6.image = UIImage(named: "stormtrooper")
        self.img7.image = UIImage(named: "stormtrooper")
        self.img8.image = UIImage(named: "stormtrooper")
        self.img9.image = UIImage(named: "stormtrooper")
        self.img10.image = UIImage(named: "stormtrooper")
        self.img11.image = UIImage(named: "stormtrooper")
        tipValue = defaults.doubleForKey("default_tip")
        
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onEditingChanged(sender: AnyObject) {
        tipValue = defaults.doubleForKey("default_tip")
        let tipPercentages = [tipValue,0.1, 0.15, 0.2]
        let num = tipPercentages[tipControl.selectedSegmentIndex]
        
        let tipPercentage = num
        
        let billAmount = NSString(string: billField.text!).doubleValue
        let tip = billAmount * tipPercentage
        
        total = billAmount + tip
        
        tipLabel.text = String(format: "$%.2f", tip)
        
        onePrice.text = String(format: "$%.2f", total)
        twoPrice.text = String(format: "$%.2f", total / 2)
        threePrice.text = String(format: "$%.2f", total / 3)
        fourPrice.text = String(format: "$%.2f", total / 4)
        morePrice.text = String(format: "$%.2f", total / NSString(string: morePerson.text!).doubleValue)
    }
    
    @IBAction func stepperChange(sender: UIStepper){
        morePrice.text = String(format: "$%.2f", total / Double(sender.value))
        self.morePerson.text = Int(sender.value).description
    }
    
    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)
    }
}

