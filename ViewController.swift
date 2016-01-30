//
//  ViewController.swift
//  tempconverter
//
//  Created by grant on 27/01/2016.
//  Copyright © 2016 grant. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tempEntry: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func submitClick(sender: UIButton) {
        if (tempEntry.text == "") {
            ShowMessage("Error!", message: "Please Enter a Number :(")
            return
        }
        
        if let temp = Double(tempEntry.text!) {
        
            let tempF = temp * (9/5) + 32
            ShowMessage("Success!", message: String(temp) + " Celcius is " + String(tempF) + " Farenheit")
        
            tempEntry.text = ""
        }
        else {
            ShowMessage("Silly!!!", message: "Temperatures can only be a number...")
        }
    }
    
    
    func ShowMessage (title: String, message: String) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: UIAlertControllerStyle.Alert)
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
        self.presentViewController(alertController, animated: true, completion: nil)
    }

}

