//
//  ViewController.swift
//  DuffyLargentAssignment5
//
//  Created by Jon Largent on 4/17/17.
//  Copyright © 2017 largent. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {
    
    var queryTypeArray = ["Name","Username","Facebook Friend","Reddit Post","Twitter Following","Social Media","Age Range","Snapchat Story","Reddit Karma","Twitter Followers"]

    @IBOutlet weak var queryInput: NSTextField!
    @IBAction func performButton(_ sender: Any) {
       print(queryTypeButton.indexOfSelectedItem)
    }
    @IBOutlet weak var queryTypeButton: NSPopUpButtonCell!

    
        
    
    override func viewDidLoad() {
        super.viewDidLoad()
        queryTypeButton.removeAllItems()
        queryTypeButton.addItems(withTitles: queryTypeArray)


        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }

}

