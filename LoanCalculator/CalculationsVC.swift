//
//  ViewController.swift
//  LoanCalculator
//
//  Created by Alexander Silkin on 2/16/17.
//  Copyright © 2017 Alexander Silkin. All rights reserved.
//

import UIKit

class CalculationsVC: UIViewController{

    @IBOutlet weak var borrowedField: UITextField!
    @IBOutlet weak var interestField: UITextField!
    @IBOutlet weak var monthsField: UITextField!
    @IBOutlet weak var paymentPermonthLBL: UILabel!
    
    
    
    
    
    // Initial View Load
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
    }
    
    
    

    

    
    //Calculate APR
    
    func calculateAPR(borrowed: String, interest: String, months: String) -> Float {
        
        //Formula
        let months = Int(months)!
        let interest = Float(interest)! / 100
        let principal = Int(borrowed)
        let n = Int(months)
        let r = Float(borrowed)! * interest / 12
        
        
        let monthlyPayment = (Float(principal!) + (r * Float(n))) / Float(n)
        
        print(r)
        print(months)
        print(interest)
        print(principal!)
        print(monthlyPayment)
        
        return monthlyPayment
    
    
    }
    
    
    
    
    
    
    
    
    @IBAction func getResultButton(_ sender: Any) {
        
        paymentPermonthLBL.text = "$\(calculateAPR(borrowed:borrowedField.text!, interest:interestField.text!, months: monthsField.text! ))"
        
        
    }
    
    

    


}

