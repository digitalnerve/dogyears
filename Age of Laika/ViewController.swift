//
//  ViewController.swift
//  Age of Laika
//
//  Created by Toby Treacher on 27/12/2014.
//  Copyright (c) 2014 Toby Treacher. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dogName: UITextField!
    @IBOutlet weak var dogActualAge: UITextField!
    @IBOutlet weak var dogAgeCalculated: UILabel!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func dogAgeButtonPressed(sender: UIButton) {
        
        let dogRealName = dogName.text
        dogName.text = ""
        dogName.resignFirstResponder()
        
        let ageFromTextField = Double((dogActualAge.text as NSString).doubleValue)
        let conversionValue = 7.0
        dogActualAge.text = ""
        dogActualAge.resignFirstResponder()
        
        
        dogAgeCalculated.hidden = false
        dogAgeCalculated.text = "\(dogRealName)" + " is " + "\(ageFromTextField * conversionValue)" + " in dog years"
        
    }

}

