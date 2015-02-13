//
//  DetailViewController.swift
//  CorkDistrict
//
//  Created by Chris Larkin on 2/7/15.
//  Copyright (c) 2015 Chris Larkin. All rights reserved.
//

import Foundation
import UIKit
import CoreData

class DetailViewController: UIViewController {
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var stateLabel: UILabel!
    @IBOutlet weak var cityLabel: UILabel!
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var phoneLabel: UILabel!
    @IBOutlet weak var zipLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    //@IBOutlet weak var textView: UITextView!
    
    var currentSelection : NSManagedObject!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if (currentSelection != nil) {
            //textView.text = currentSelection.valueForKey("about") as? String
            titleLabel.text = currentSelection.valueForKey("name") as? String
            addressLabel.text = currentSelection.valueForKey("address") as? String
            zipLabel.text = currentSelection.valueForKey("zipcode") as? String
            phoneLabel.text = currentSelection.valueForKey("phone") as? String
            cityLabel.text = currentSelection.valueForKey("city") as? String
            cityLabel.sizeToFit()
            descriptionLabel.text = currentSelection.valueForKey("about") as? String
            descriptionLabel.sizeToFit()
            
            let imageData = currentSelection.valueForKey("imageData") as? NSData
            let mainImage = UIImage(data: imageData!)
            imageView.image = mainImage
            //imageView.contentMode = UIViewContentMode.ScaleAspectFit
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
}