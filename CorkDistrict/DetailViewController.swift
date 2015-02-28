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

class DetailViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    let titleRowHeight : CGFloat = 80.0
    let imageRowHeight : CGFloat = 240.0
    let defaultRowHeight : CGFloat = 60.0
    var currentSelection : NSManagedObject!
    let appDelegate = UIApplication.sharedApplication().delegate as AppDelegate
    
    
    //# MARK: - View Controller Methods
    override func viewDidLoad() {
        super.viewDidLoad()
<<<<<<< Updated upstream
=======
        
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "detailBackground2")!)
        self.changeColor()
        
        if (currentSelection != nil) {
            titleLabel.text = currentSelection.valueForKey("name") as? String
            addressLabel.text = currentSelection.valueForKey("address") as? String
            
            phoneLabel.text = currentSelection.valueForKey("phone") as? String
            
            var cityText = currentSelection.valueForKey("city") as? String
            var zipText = currentSelection.valueForKey("zipcode") as? String
            cityLabel.text = cityText! + " " + zipText!
            cityLabel.sizeToFit()
            
            descriptionLabel.text = currentSelection.valueForKey("about") as? String
            descriptionLabel.sizeToFit()
            
            
            let imageData = currentSelection.valueForKey("imageData") as? NSData
            let mainImage = UIImage(data: imageData!)
            imageView.image = mainImage
            imageView.layer.cornerRadius = 8.0
            imageView.clipsToBounds = true
            //imageView.contentMode = UIViewContentMode.ScaleAspectFit

        }
>>>>>>> Stashed changes
    }
    
    
    func changeColor() {
        
        titleLabel.textColor = UIColor.whiteColor()
        addressLabel.textColor = UIColor.whiteColor()
        phoneLabel.textColor = UIColor.whiteColor()
        cityLabel.textColor = UIColor.whiteColor()
        descriptionLabel.textColor = UIColor.whiteColor()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    //# MARK: - TableView Methods
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 6
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("detailCell") as UITableViewCell
        cell.textLabel?.textAlignment = NSTextAlignment.Left
        cell.textLabel?.text = ""
        
        switch (indexPath.row) {
            case 0:
                let titleLabel = UILabel(frame: CGRectMake(15.0,0.0,350.0,82.0))
                titleLabel.font = UIFont(name: "STHeitiTC-Light", size: 36.0)
                titleLabel.textAlignment = NSTextAlignment.Left
                titleLabel.text = currentSelection.valueForKey("name") as? String
                cell.addSubview(titleLabel)
                break
            case 1:
                cell.textLabel?.text = currentSelection.valueForKey("address") as? String
                break
            case 2:
                let city = currentSelection.valueForKey("city") as? String
                let zipcode = currentSelection.valueForKey("zipcode") as? String
                cell.textLabel?.text = city! + " " + zipcode!
                break
            case 3:
                cell.textLabel?.text = currentSelection.valueForKey("phone") as? String
                break
            case 4:
                let imageData = currentSelection.valueForKey("imageData") as? NSData
                let mainImage = UIImage(data: imageData!)
                let newImageView = UIImageView(frame: CGRectMake(15.0,10.0,345.0,200.0))
                newImageView.image = mainImage
                cell.addSubview(newImageView)
                break
            case 5:
                cell.textLabel?.text = currentSelection.valueForKey("about") as? String
                break
            default:
                
                break
        }
        
        return cell
    }
    
    func tableView(tableView: UITableView!, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        if (indexPath.row == 3) {
            var tempNum = currentSelection.valueForKey("phone") as NSString
            var tempNumStr = tempNum.stringByAddingPercentEscapesUsingEncoding(NSUTF8StringEncoding)!
            UIApplication.sharedApplication().openURL(NSURL(string: "tel://\(tempNumStr)")!)
        }
    }
    
    func tableView(tableView: UITableView!, heightForRowAtIndexPath indexPath: NSIndexPath!) -> CGFloat {
        
        switch (indexPath.row) {
            case 0:
                return titleRowHeight
            case 4:
                return imageRowHeight
            case 5:
                var tempStr = currentSelection.valueForKey("about") as String
                var size = getSizeForText(tempStr)
                return size
            default:
                return defaultRowHeight
        }
    }
    
    func getSizeForText(cellText: String) -> CGFloat {
        var length = CGFloat(cellText.utf16Count)
        var rowSize : CGFloat = (length/13.0)*12.0
        return rowSize
    }
    
    
}