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
    
    // MARK: Actions
    /* Two variables we need to worry about (mode, reason)
        Each button has an action and will change those variables
    */
    
    /* "I Didn't Travel" button press
        survey waiting = false
        proceed to home screen
    */
    
    /* "Wrong Location" button press
        show modal with new location form
    */
    
    /* "Done" button press
        save to database
    */
}
