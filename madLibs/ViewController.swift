//
//  ViewController.swift
//  madLibs
//
//  Created by Arin Halicki on 1/17/18.
//  Copyright © 2018 Arin Halicki. All rights reserved.
//

import UIKit

class ViewController: UIViewController, EntryManagerDelegate {
    var statements = ["We are having a perfectly crazy time now. Later we will run and swim in the basement."]
    
    @IBOutlet weak var displayText: UITextView!
    
    
    func submitData(sender: EntryManagerController, words: [String]) {
        let statement = "We are having a \(words[0]) crazy time now. Later we will \(words[1]) and \(words[2]) in the \(words[3])."
        displayText.text = statement
        dismiss(animated: true, completion: nil)
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        displayText.text = ""
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowViewTwo" {
            let entryManagerController = segue.destination as! EntryManagerController
            
            // set self as delegate
            entryManagerController.delegate = self
        }
        
       
    }
    
}

