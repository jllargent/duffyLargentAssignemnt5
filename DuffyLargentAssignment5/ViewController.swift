//
//  ViewController.swift
//  DuffyLargentAssignment5
//
//  Created by Jon Largent on 4/17/17.
//  Copyright © 2017 largent. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {
    
    var queryTypeArray = ["Name","Twitter Username","Facebook Friend","Reddit Post","Twitter Following","Social Media","Age Range","Snapchat Story","Reddit Karma","Twitter Followers"]
    var results = ""
    var query = ""
    var queryType = 0
    let emptyText = NSMutableAttributedString(string: "")
    let noData = NSMutableAttributedString(string: "No Data Exists")
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
    var facebookDictionary = ["Julia Largent":["Julia Largent","1138","01-SEP-06"],
        "Aidan Kearney":["Aidan Kearney","653",""],
        "Jon Largent":["]jllargent@gmail.com","515","25-SEP-05"],
        "Meghan Duffy":["Meghan Duffy","241","03-SEP-14"],
        "Nick Dowell":["Nick Dowell","174",""],
        "Carly Jensen":["Carly Jensen","1000","01-JAN-08"],
        "Basil":["Smallherbfriend","17","14-AUG-14"],
        "Jack McGinnis":["Jack T McGinnis","502","21-FEB-13"],
        "Divya":["Divya Sarda","187",""],
        "Amy Rose Williams":["Amii Rose","62","13-OCT-09"]
    ]
    var redditDictionary = ["Julia Largent":["Jellos4peace","","312","","06-DEC-10"],
        "Jon Largent":["mushsogene","27","11","7","28-OCT-11"],
        "Meghan Duffy":["smalls2233","1","132","22","31-AUG-14"],
        "Nick Dowell":["IAmTheWeregoose","21","1104","30","05-MAY-14"]

    ]
    var twitterDictionary = ["Trent Kaniuga":["TrentKaniuga","238","2678","1066","01-JAN-10"],
                             "Charlie Bowater":["charliebowater","337","20500","6697","01-JUN-09"],
        "Matt Carriker":["demolitionranch","21","42400","373","01-APR-14"],
        "Julia Largent":["jellos4peace","1197","521","15700","15-JUN-09"],
        "Aidan Kearney":["kearnishmas","250","50","","01-JAN-15"],
        "Jon Largent":["jon_largent","73","46","2646","15-MAR-08"],
        "Meghan Duffy":["smalls2233","470","287","10500","15-JUN-09"],
        "Nick Dowell":["ncdowell","215","184","4726","15-APR-11"],
        "Carly Jensen":["carlywankenobi","345","390","23700","01-JAN-12"],
        "Basil":["BasilGard3n","85","20","1098","01-JUN-15"],
        "Matthew Yapp":["Mattyappish","360","182","2102",""],
        "Jack McGinnis":["NativeAbearican","457","122","1720","25-DEC-15"],
        "Divya":["legendofdivya","135","38","354","25-MAR-15"],
        "Amy Rose Williams":["CaptainLuxCanis","232","516","","25-MAR-09"]

    ]
    var snapchatDictionary = ["Julia Largent":["Jellos4peace","","1"],
        "Aidan Kearney":["kearnishmas","","1"],
        "Jon Largent":["mushsogene","26","0"],
        "Meghan Duffy":["smalls2233","55","1"],
        "Nick Dowell":["ncdowell","25","1"],
        "Carly Jensen":["sassyhairflip","","0"],
        "Matthew Yapp":["Mattyappish","53","1"],
        "Divya":["divi_s5","79","1"]
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
        resultsTextViewer.textStorage?.setAttributedString(emptyText)
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
        resultsTextViewer.textStorage?.setAttributedString(emptyText)
        for (name, info) in nameDictionary{
            results = "Name     Location        Brithdate       Language        Twitter Username    Facebook Username   Snapchat Username   Reddit Username Instagram Username \n"
            if query.caseInsensitiveCompare(info[3]) == .orderedSame{
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
    
    func facebookFriendChoice(query: String) {
        print("facebook friend choice " + query)
        resultsTextViewer.textStorage?.setAttributedString(emptyText)
        for (name, info) in facebookDictionary{
            results = "Name     Username        Friends Count       Date Joined\n"
            if query.caseInsensitiveCompare(info[1]) == .orderedSame{
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
    
    func redditPostChoice(query: String) {
        print("reddit post choice " + query)
        resultsTextViewer.textStorage?.setAttributedString(emptyText)
        for (name, info) in redditDictionary{
            results = "Name     Username    Subreddits      Karma       Post Count      Date Joined\n"
            if query.caseInsensitiveCompare(info[3]) == .orderedSame{
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
    
    func twitterFollowingChoice(query: String) {
        print("twitter following choice " + query)
        resultsTextViewer.textStorage?.setAttributedString(emptyText)
        for (name, info) in twitterDictionary{
            results = "Name     Username    Following      Followers       Post Count      Date Joined\n"
            if query.caseInsensitiveCompare(info[1]) == .orderedSame{
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
    
    func socialMediaChoice(query: String) {
        print("social media choice " + query)
    }
    
    func ageRangeChoice(query: String) {
        print("age range choice " + query)
    }
    
    func snapchatStoryChoice(query: String) {
        print("snapchat story choice " + query)
        resultsTextViewer.textStorage?.setAttributedString(emptyText)
        var snapQuery = ""
        if query.caseInsensitiveCompare("yes") == .orderedSame{
            snapQuery = "1"
        }else{
            snapQuery = "0"
        }
        for (name, info) in snapchatDictionary{
            results = "Name     Username    Friends      Story\n"
            if snapQuery.caseInsensitiveCompare(info[2]) == .orderedSame{
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
    
    func redditKarmaChoice(query: String) {
        print("reddit karma choice " + query)
        resultsTextViewer.textStorage?.setAttributedString(emptyText)
        for (name, info) in redditDictionary{
            results = "Name     Username    Subreddits      Karma       Post Count      Date Joined\n"
            if query.caseInsensitiveCompare(info[2]) == .orderedSame{
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
    
    func twitterFollowersChoice(query: String) {
        print("twitter followers choice " + query)
        resultsTextViewer.textStorage?.setAttributedString(emptyText)
        for (name, info) in twitterDictionary{
            results = "Name     Username    Following      Followers       Post Count      Date Joined\n"
            if query.caseInsensitiveCompare(info[2]) == .orderedSame{
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
}

