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

    var query = ""
    var queryType = 0
    @IBOutlet weak var queryInput: NSTextField!
    @IBAction func performButton(_ sender: Any) {
        queryType = queryTypeButton.indexOfSelectedItem
        query = queryInput.stringValue
        print(queryType)
        print(query)
        
        switch queryType {
        case 0: nameChoice(query: query)
        case 1: usernameChoice(query: query)
        case 2: facebookFriendChoice(query: query)
        case 3: redditPostChoice(query: query)
        case 4: twitterFollowingChoice(query: query)
        case 5: socialMediaChoice(query: query)
        case 6: ageRangeChoice(query: query)
        case 7: snapchatStoryChoice(query: query)
        case 8: redditKarmaChoice(query: query)
        case 9: twitterFollowersChoice(query: query)
        default: break
        }
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

    func nameChoice(query: String) {
        print("name choice " + query)
    }
    
    func usernameChoice(query: String) {
        print("username choice " + query)
    }
    
    func facebookFriendChoice(query: String) {
        print("facebook friend choice " + query)
    }
    
    func redditPostChoice(query: String) {
        print("reddit post choice " + query)
    }
    
    func twitterFollowingChoice(query: String) {
        print("twitter following choice " + query)
    }
    
    func socialMediaChoice(query: String) {
        print("social media choice " + query)
    }
    
    func ageRangeChoice(query: String) {
        print("age range choice " + query)
    }
    
    func snapchatStoryChoice(query: String) {
        print("snapchat story choice " + query)
    }
    
    func redditKarmaChoice(query: String) {
        print("reddit karma choice " + query)
    }
    
    func twitterFollowersChoice(query: String) {
        print("twitter followers choice " + query)
    }
}

