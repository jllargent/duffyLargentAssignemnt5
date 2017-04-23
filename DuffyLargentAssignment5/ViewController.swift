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
    var results = ""
    var query = ""
    var queryType = 0
    var nameDictionary = ["Trent Kaniuga":["Irvine, California","","English","TrentKaniuga","","","","trent_k_arts"],
        "Charlie Bowater":["United Kingdom","","English","charliebowater","","","","charliebowater"],
        "Matt Carriker":["Texas","","English","demolitionranch","","","","demolition_ranch"],
        "Julia Largent":["Ohio","16-JAN-89","English","jellos4peace","Julia Largent","Jellos4peace","Jellos4peace","Jellos4peace"],
        "Aidan Kearney":["Muncie, Indiana","31-MAR-95","English","kearnishmas","Aidan Kearney","kearnishmas","","francisfordcawpolla"],
        "Meghan Duffy":["Simpsonville, SC","01-JAN-96","English","smalls2233","mrduffy@bsu.edu","smalls2233","smalls2233","smalls2233"],
        "Jon Largent":["Muncie, IN","15-FEB-86","English","jon_largent","jllargent@gmail.com","mushsogene","mushsogene","jllargent"],
        "Nick Dowell":["Indianapolis, IN","16-APR-93","English","ncdowell","Nick Dowell","ncdowell","IAmTheWeregoose","ncdowell"],
        "Carly Jensen":["Warrensburg, MO","19-JAN-94","English","carlywankenobi","Carly Jensen","sassyhairflip","","carlywankenobi"],
        "Basil":["North Carolina","25-AUG-92","English","BasilGard3n","Smallherbfriend","","","Nerdcraftcrochets "],
        "Matthew Yapp":["Muncie indiana","03-JUN-98","English","Mattyappish","","Mattyappish","","Mattyappish"],
        "Jack McGinnis":["Muncie indiana","31-MAR-98","English","NativeAbearican","Jack T McGinnis","","",""],
        "Divya":["","12-MAY-96","English","legendofdivya","Divya Sarda","divi_s5","","legendofdivya"],
        "Amy Rose Williams ":["Solihull, England ","15-APR-92","English","CaptainLuxCanis","Amii Rose","","","CaptainLuxCanis"],
        "Nicole Gustafsson":["Washington","","English","Nimasprout","","","","Nimasprout"]
    ]

    
    @IBOutlet var resultsTextViewer: NSTextView!
    @IBOutlet weak var resultsViewer: NSScrollView!
    @IBOutlet weak var queryInput: NSTextField!
    @IBAction func performButton(_ sender: Any) {
        queryType = queryTypeButton.indexOfSelectedItem
        query = queryInput.stringValue
        
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
        for (name, info) in nameDictionary{
            results = "Name     Location        Brithdate       Language        Twitter Username    Facebook Username   Snapchat Username   Reddit Username Instagram Username \n"
            if query.caseInsensitiveCompare(name) == .orderedSame{
                results.append(name + "    ")
                for data in info{
                    results.append(data + "   ")
                }
                results.append("\n")
                print(results)
                let printResults = NSMutableAttributedString(string: results)
                resultsTextViewer.textStorage?.append(printResults)
                
            }
        }
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

