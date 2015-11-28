//
//  ViewController.swift
//  Beziehungsrechner
//
//  Created by Lukas Schramm on 15.07.15.
//  Copyright © 2015 Dabendorf. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var getName1: UITextField!
    @IBOutlet weak var getName2: UITextField!
    @IBOutlet weak var labelErgebnis: UILabel!
    @IBOutlet weak var progressView: NSLayoutConstraint!
    @IBOutlet weak var progressViewRate: UIProgressView!
    
    @IBAction func calculateButton(sender: UIButton) {
        generateRelation()
    }
    
    func generateRelation() {
        var names = [String]()
        var complete = true
        if let name1 = getName1.text {
            names.append(name1)
        } else {
            complete = false
        }
        
        if let name2 = getName2.text {
            names.append(name2)
        } else {
            complete = false
        }
        
        if names[0]=="" || names[1]=="" {
            complete = false
        }
        
        if complete {
            let calc = Calculate(names: names)
            labelErgebnis.text = "relationship rate: \(calc.getRelationRate()) %"
            progressViewRate.progress = Float(calc.getRelationRate())/100
        } else {
            labelErgebnis.text = "Names are missing!"
            progressViewRate.progress = 0
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.getName1.delegate = self
        self.getName2.delegate = self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        self.view.endEditing(true)
        generateRelation()
        return false
    }
}