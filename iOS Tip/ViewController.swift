//
//  ViewController.swift
//  iOS Tip
//
//  Created by student on 1/30/20.
//  Copyright © 2020 Avishek. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var totalTF:UITextField!
    @IBOutlet weak var TipLBL:UILabel!
    @IBOutlet weak var TaxLBL:UILabel!
    @IBOutlet weak var RateLBL:UILabel!
    @IBOutlet weak var grandTotal:UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func CALCULATE(sender:UIButton){
           
           if let total = Double(totalTF.text!) {
               
               
               let tax = ((7/100) * total)
               let tip = (20/100) * total
               let grandTotal = (total + tax + tip)
            
               tipLBL.text = String(format:"%.2f", tip)
               tipLBL.tot_tax = String(format:"%.2f", tot_tax)
               tipLBL.tot_tax = String(format:"%.2f", tot_tax)
    


}



    else{
        
        //display an alert
        
        let ac = UIAlertController(title: "It is an illegeal Year", message: "Please enter a valid value", preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .cancel)
        ac.addAction(action)
        self.present(ac, animated: true)
        
        print("Nice try bro")
        
        
        
    }

}
