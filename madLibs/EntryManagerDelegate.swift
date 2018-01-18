//
//  EntryManagerDelegate.swift
//  madLibs
//
//  Created by Arin Halicki on 1/18/18.
//  Copyright © 2018 Arin Halicki. All rights reserved.
//

import Foundation

protocol EntryManagerDelegate: class {
    func submitData (sender: EntryManagerController, words: [String])
}
