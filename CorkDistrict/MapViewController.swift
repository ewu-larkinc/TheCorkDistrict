//
//  MapViewController.swift
//  CorkDistrict
//
//  Created by Chris Larkin on 2/4/15.
//  Copyright (c) 2015 Chris Larkin. All rights reserved.
//

import Foundation
import UIKit
import MapKit

class MapViewController: UIViewController, MKMapViewDelegate {
    
    @IBAction func returnToHomePage(AnyObject) {
        self.dismissViewControllerAnimated(true, completion: {});
    }
    
    
    @IBOutlet var theMapView: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        var lat: CLLocationDegrees = 47.66
        var long: CLLocationDegrees = -117.415
        
        var latDelta: CLLocationDegrees = 0.04
        var longDelta: CLLocationDegrees = 0.04
        
        var theSpan: MKCoordinateSpan = MKCoordinateSpanMake(latDelta, longDelta)
        
        var centerLocation: CLLocationCoordinate2D = CLLocationCoordinate2DMake(lat, long)
        
        var theRegion: MKCoordinateRegion = MKCoordinateRegionMake(centerLocation, theSpan)
        
        self.theMapView.setRegion(theRegion, animated: true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}