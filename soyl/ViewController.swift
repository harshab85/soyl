//
//  ViewController.swift
//  soyl
//
//  Created by Harsha Bala on 2017-01-31.
//  Copyright © 2017 HappyPup. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nickname: UITextField!
    
    @IBOutlet weak var budget: UITextField!
    
    @IBOutlet weak var email: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func tempAction(sender: UIButton) {
        
        
        if email.text == nil || (email.text?.isEmpty)!{
            showAlert("The email cannot be empty")
            return
        }
        
        if nickname.text == nil || (nickname.text?.isEmpty)!{
            showAlert("The nickname cannot be empty")
            return
        }
        
        if budget.text == nil || (budget.text?.isEmpty)!{
            showAlert("The budget cannot be empty")
            return
        }
        
        var budgetAmount = Float(budget.text!)
        var account = Account(nickname: nickname.text!, email: email.text!, budget: budgetAmount!)
        
        // Save account
        
    }
    
    func showAlert(message:String){
        let alertPrompt = UIAlertController(title: "Invalid input", message: message, preferredStyle: UIAlertControllerStyle.Alert);
        
        alertPrompt.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.Default, handler: { (action) -> Void in
            // Do nothing
        }));
        
        self.presentViewController(alertPrompt, animated: false, completion: nil);
    }
}

