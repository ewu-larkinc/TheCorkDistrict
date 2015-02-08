//
//  WineriesViewController.swift
//  CorkDistrict
//
//  Created by Chris Larkin on 2/4/15.
//  Copyright (c) 2015 Chris Larkin. All rights reserved.
//

import Foundation
import UIKit

class WineriesViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    var wineries = [String]()
    
    @IBAction func returnToHomePage(AnyObject) {
        self.dismissViewControllerAnimated(true, completion: {});
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "basicCell")
        wineries.append("Nectar Tasting Room")
        wineries.append("Arbor Crest Wine Cellars")
        wineries.append("Patit Creek Cellars")
        wineries.append("Emvy Cellars")
        wineries.append("Latah Creek Wine Cellars")
        wineries.append("Cougar Crest Estate Winery")
        wineries.append("Townshend Cellar")
        wineries.append("Robert Karl Cellars")
        wineries.append("Whitestone Winery")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    //TABLEVIEW METHODS//////////////
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return wineries.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("basicCell")
            as UITableViewCell
        
        cell.textLabel!.text = wineries[indexPath.row]
        
        return cell
    }
    
    
}