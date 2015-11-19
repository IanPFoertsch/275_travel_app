//
//  SurveryController.swift
//  TravLog
//
//  Created by Paul D'Amora on 10/24/15.
//  Copyright © 2015 TravLog. All rights reserved.
//

import UIKit
import CoreLocation

class SurveyController: UIViewController {
    let date = NSDate()
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        // Grab the user's current location, store in variable
    }
    
    // MARK: Properties
    // outlets for survey form objects
    @IBOutlet weak var labelMode: UILabel!
    
  
    // MARK: Actions
    /* Two variables we need to worry about (mode, reason)
        Each button has an action and will change those variables
    */
    @IBAction func buttonPlane(sender: UIButton) {
        let mode = sender.currentTitle!
        labelMode.text = sender.currentTitle!
    }
    @IBAction func buttonBus(sender: UIButton) {
        let mode = sender.currentTitle!
        labelMode.text = sender.currentTitle!
    }
    @IBAction func buttonTrain(sender: UIButton) {
        let mode = sender.currentTitle!
        labelMode.text = sender.currentTitle!
    }
    @IBAction func buttonOther(sender: UIButton) {
        let mode = sender.currentTitle!
        labelMode.text = sender.currentTitle!
    }
    
    
    /* "I Didn't Travel" button press
        survey waiting = false
        proceed to home screen
    */
    @IBAction func buttonDidntTravel(sender: UIButton) {
    }
    
    /* "Wrong Location" button press
        show modal with new location form
    */
    
    /* "Submit" button press
    save to database, go to profile screen
    */
    
    @IBAction func buttonSubmit(sender: UIButton) {
        let locationObject: [String:AnyObject] = [
            "locationX":1.0,
            "locationY":10,
            "mode":labelMode.text!,
            "purpose":"derp",
            "userIdentifier":"FlerpMerp",
            "recordDate":35.0]
        
        let urlString: String = "http://ec2-54-208-153-2.compute-1.amazonaws.com/Travlog/location"
        sendPostRequest(locationObject, urlstr: urlString)
        print(date)
    }
    
    /*
    Restful Communication
    */
    
    
    func sendPostRequest(sendMe:[String:AnyObject], urlstr:String){
        
        
        
        guard let url = NSURL(string: urlstr) else {
        print("Error: cannot create URL")
        return
        }
        
        let urlRequest = NSMutableURLRequest(URL: url)  // must be mutable to set the http method
        urlRequest.HTTPMethod = "POST"
        
        
        urlRequest.setValue("application/json", forHTTPHeaderField:"Content-Type")
        
        //let dataExample : NSData = NSKeyedArchiver.archivedDataWithRootObject(JSONObject)
        
        do {
        let jsonData = try NSJSONSerialization.dataWithJSONObject(sendMe, options: [])
        //print(jsonData)
        //let string = NSString(data:jsonData, encoding:NSUTF8StringEncoding)
        //print(string)
        urlRequest.HTTPBody = jsonData
        
        NSURLConnection.sendAsynchronousRequest(urlRequest, queue:NSOperationQueue.mainQueue(), completionHandler: {
        (response, data, error) in
        
        guard let _ = data else {
        print("Error: did not receive data")
        return
        }
        guard error == nil else {
        print("error calling POST")
        print(error)
        return
        }
        
        })
    }
                
    catch {
        print("json error: \(error)")
        }
        
        
        
        
    }
    
}