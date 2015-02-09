//
//  DetailViewController.swift
//  CorkDistrict
//
//  Created by Chris Larkin on 2/7/15.
//  Copyright (c) 2015 Chris Larkin. All rights reserved.
//

import Foundation
import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var textView: UITextView!
    var currentItemDescription : String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if (currentItemDescription != nil) {
            textView.text = currentItemDescription
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}