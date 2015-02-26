//
//  ViewController.swift
//  CorkDistrict
//
//  Created by Chris Larkin on 2/1/15.
//  Copyright (c) 2015 Chris Larkin. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    //# MARK: - View Controller Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.backgroundView = UIImageView(image:UIImage(named: "menuBackground"))
        
        let dataManager = Singleton.sharedInstance
        dataManager.loadData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

