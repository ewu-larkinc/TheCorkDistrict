//
//  WineriesViewController.swift
//  CorkDistrict
//
//  Created by Chris Larkin on 2/4/15.
//  Copyright (c) 2015 Chris Larkin. All rights reserved.
//

import Foundation
import UIKit
import CoreData

class WineriesViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    var wineries = [NSManagedObject]()
    
    @IBAction func returnToHomePage(AnyObject) {
        self.dismissViewControllerAnimated(true, completion: {})
    }
    
    //# MARK: - View Controller Methods
    override func viewDidLoad() {
        super.viewDidLoad()
<<<<<<< Updated upstream
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "wineBackground")!)
        
        let dataManager = Singleton.sharedInstance
=======
        
        //
        self.tableView.backgroundView = UIImageView(image:UIImage(named: "wineBackground"))
        
        let dataManager = Singleton()
>>>>>>> Stashed changes
        wineries = dataManager.getWineries()
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    //# MARK: - Segue Methods
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        
        let dvc = segue.destinationViewController as DetailViewController
        
        if let indexPath = self.tableView.indexPathForSelectedRow() {
            let winery = wineries[indexPath.row]
            dvc.currentSelection = winery
        }
        
    }
    
    //# MARK: - TableView Methods
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return wineries.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        return basicCellAtIndexPath(indexPath)
    }
    
    func basicCellAtIndexPath(indexPath:NSIndexPath) -> BasicCell {
        let basicCellIdentifier = "BasicCell"
        let basicCell = tableView.dequeueReusableCellWithIdentifier(basicCellIdentifier) as BasicCell
        setContentForCell(basicCell, indexPath: indexPath)
        return basicCell
    }
    
    func setContentForCell(cell:BasicCell, indexPath:NSIndexPath) {
        let winery = wineries[indexPath.row]
        
        cell.backgroundColor = UIColor.clearColor()
        
        cell.titleLabel.text = winery.valueForKey("name") as? String
        cell.addressLabel.text = winery.valueForKey("address") as? String
        cell.cityLabel.text = winery.valueForKey("city") as? String
        cell.cityLabel.sizeToFit()
        cell.phoneLabel.text = winery.valueForKey("phone") as? String
        
        let imageData = winery.valueForKey("imageData") as? NSData
        let myImage = UIImage(data: imageData!)
        cell.cellImage.image = myImage
        
        //Round Image Corners ZB
        cell.cellImage.layer.cornerRadius = 5.0
        cell.cellImage.clipsToBounds = true
        
        cell.cellImage.contentMode = UIViewContentMode.ScaleAspectFit
        
    }
    
}