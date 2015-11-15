//
//  HomeController.swift
//  TravLog
//
//  Created by Paul D'Amora on 10/28/15.
//  Copyright © 2015 TravLog. All rights reserved.
//

import UIKit
import CoreLocation

class HomeController: UIViewController, CLLocationManagerDelegate , PiechartDelegate {
    
    var total: CGFloat = 20
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var views: [String: UIView] = [:]
        
        var Car = Piechart.Slice()
        Car.value = 5 / total
        Car.color = UIColor.magentaColor()
        Car.text = "Car"
        
        var Train = Piechart.Slice()
        Train.value = 6 / total
        Train.color = UIColor.blueColor()
        Train.text = "Train"
        
        var Bus = Piechart.Slice()
        Bus.value = 4 / total
        Bus.color = UIColor.orangeColor()
        Bus.text = "Bus"
        
        var Plane = Piechart.Slice()
        Plane.value = 5 / total
        Plane.color = UIColor.magentaColor()
        Plane.text = "Plane"
        
        let piechart = Piechart()
        piechart.delegate = self
        piechart.title = "Mode Choice"
        piechart.activeSlice = 2
        piechart.layer.borderWidth = 1
        piechart.slices = [Car, Train, Bus, Plane]
        
        piechart.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(piechart)
        views["piechart"] = piechart
        view.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("H:|-[piechart]-|", options: [], metrics: nil, views: views))
        view.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("V:|-100-[piechart(==100)]", options: [], metrics: nil, views: views))
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func setSubtitle(slice: Piechart.Slice) -> String {
        return "\(Int(slice.value * 100))% \(slice.text)"
    }
    
    func setInfo(slice: Piechart.Slice) -> String {
        return "\(Int(slice.value * total))/\(Int(total))"
    }
    // MARK: Properties
    // outlets for home screen objects (pie chart, location, survey button)

    // MARK: Actions
    /* User leaves region
    add local push notification for x hours in the future
    survey waiting = true
    */
    
   
}