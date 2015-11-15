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
        print ("mode = \(mode)")
    }
    @IBAction func buttonBus(sender: UIButton) {
        let mode = sender.currentTitle!
        labelMode.text = sender.currentTitle!
        print ("mode = \(mode)")
    }
    @IBAction func buttonTrain(sender: UIButton) {
        let mode = sender.currentTitle!
        labelMode.text = sender.currentTitle!
        print ("mode = \(mode)")
    }
    @IBAction func buttonOther(sender: UIButton) {
        let mode = sender.currentTitle!
        labelMode.text = sender.currentTitle!
        print ("mode = \(mode)")
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
        
    }
}