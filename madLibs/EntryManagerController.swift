//
//  EntryManagerController.swift
//  madLibs
//
//  Created by Arin Halicki on 1/17/18.
//  Copyright © 2018 Arin Halicki. All rights reserved.
//

import UIKit

class EntryManagerController: UIViewController {
    
    // make delegate attr
    weak var delegate: EntryManagerDelegate!
    
    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var textField2: UITextField!
    @IBOutlet weak var textField3: UITextField!
    @IBOutlet weak var textField4: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textField1.placeholder = "Adjective"
        textField2.placeholder = "Verb"
        textField3.placeholder = "Verb"
        textField4.placeholder = "Noun"

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func submitButtonPressed(_ sender: UIButton) {
        let words = [textField1.text!, textField2.text!, textField3.text!, textField4.text!]
        
        // call delegate method
        delegate.submitData(sender: self, words: words)
    }

    
}
