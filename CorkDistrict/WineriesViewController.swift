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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        //grab the managedObjectContext in order to work with managed objects
        let appDelegate = UIApplication.sharedApplication().delegate as AppDelegate
        let managedContext = appDelegate.managedObjectContext!
        
        //now, create a new managed object model and insert it into our managedObjectContext
        /*let winery1 = NSEntityDescription.insertNewObjectForEntityForName("Winery", inManagedObjectContext: managedContext) as NSManagedObject
        let winery2 = NSEntityDescription.insertNewObjectForEntityForName("Winery", inManagedObjectContext: managedContext) as NSManagedObject
        let winery3 = NSEntityDescription.insertNewObjectForEntityForName("Winery", inManagedObjectContext: managedContext) as NSManagedObject
        let winery4 = NSEntityDescription.insertNewObjectForEntityForName("Winery", inManagedObjectContext: managedContext) as NSManagedObject
        let winery5 = NSEntityDescription.insertNewObjectForEntityForName("Winery", inManagedObjectContext: managedContext) as NSManagedObject
        let winery6 = NSEntityDescription.insertNewObjectForEntityForName("Winery", inManagedObjectContext: managedContext) as NSManagedObject
        let winery7 = NSEntityDescription.insertNewObjectForEntityForName("Winery", inManagedObjectContext: managedContext) as NSManagedObject
        let winery8 = NSEntityDescription.insertNewObjectForEntityForName("Winery", inManagedObjectContext: managedContext) as NSManagedObject
        let winery9 = NSEntityDescription.insertNewObjectForEntityForName("Winery", inManagedObjectContext: managedContext) as NSManagedObject
        let winery10 = NSEntityDescription.insertNewObjectForEntityForName("Winery", inManagedObjectContext: managedContext) as NSManagedObject
        let winery11 = NSEntityDescription.insertNewObjectForEntityForName("Winery", inManagedObjectContext: managedContext) as NSManagedObject
        let winery12 = NSEntityDescription.insertNewObjectForEntityForName("Winery", inManagedObjectContext: managedContext) as NSManagedObject
        let winery13 = NSEntityDescription.insertNewObjectForEntityForName("Winery", inManagedObjectContext: managedContext) as NSManagedObject
        let winery14 = NSEntityDescription.insertNewObjectForEntityForName("Winery", inManagedObjectContext: managedContext) as NSManagedObject
        let winery15 = NSEntityDescription.insertNewObjectForEntityForName("Winery", inManagedObjectContext: managedContext) as NSManagedObject
        let winery16 = NSEntityDescription.insertNewObjectForEntityForName("Winery", inManagedObjectContext: managedContext) as NSManagedObject
        let winery17 = NSEntityDescription.insertNewObjectForEntityForName("Winery", inManagedObjectContext: managedContext) as NSManagedObject
        
        let fileURL = NSBundle.mainBundle().URLForResource("latahCreek", withExtension: "png")
        //let myImage = UIImage(contentsOfFile: "latahCreek.png")
        
        
        //now set the objects attributes
        
        let myImage = UIImage(named: "latahCreek.png")
        //let myImage = UIImageJPEGRepresentation(theImage, 1)
        
        winery1.setValue(UIImageJPEGRepresentation(myImage, 1), forKey: "imageData")
        winery1.setValue("Whitestone Winery", forKey: "name")
        winery1.setValue("8 N Post", forKey: "address")
        winery1.setValue("99201", forKey: "zipcode")
        winery1.setValue("(509) 838-2427", forKey: "phone")
        winery1.setValue("Whitestone Winery is proud to release estate wines exclusively showing the unique, favorable soil and weather conditions of the Whitestone Vineyard that is located on the shores of Lake Roosevelt. The winery produces limited quantities of premium handcrafted red wines. The winery is located 75 miles west of Spokane on US Hwy 2. Please call for tasting room hours.",
            forKey: "about")
        
        
        winery2.setValue(UIImageJPEGRepresentation(myImage, 1), forKey: "imageData")
        winery2.setValue("Barrister Winery", forKey: "name")
        winery2.setValue("1213 W Railroad Avenue", forKey: "address")
        winery2.setValue("99201", forKey: "zipcode")
        winery2.setValue("(509) 465-3591", forKey: "phone")
        winery2.setValue("One of the Northwest's emerging superstar wineries, Barrister Winery is owned by two attorney/winemakers. Specializing in reds, our wines are available at the winery, from our mailing list or in selected fine restaurants and wine shops. Please visit our website to learn more about upcoming events, tours, new releases and hours of operation.",
            forKey: "about")
        
        winery3.setValue(UIImageJPEGRepresentation(myImage, 1), forKey: "imageData")
        winery3.setValue("Overbluff Cellars", forKey: "name")
        winery3.setValue("620 S Washington", forKey: "address")
        winery3.setValue("99204", forKey: "zipcode")
        winery3.setValue("(509) 991-4781", forKey: "phone")
        winery3.setValue("",
            forKey: "about")
        
        winery4.setValue(UIImageJPEGRepresentation(myImage, 1), forKey: "imageData")
        winery4.setValue("Knipprath Cellars", forKey: "name")
        winery4.setValue("5634 E Commerce Avenue", forKey: "address")
        winery4.setValue("99212", forKey: "zipcode")
        winery4.setValue("(509) 534-5121", forKey: "phone")
        winery4.setValue("",
            forKey: "about")
        
        winery5.setValue(UIImageJPEGRepresentation(myImage, 1), forKey: "imageData")
        winery5.setValue("Liberty Lake Wine Cellars", forKey: "name")
        winery5.setValue("1018 S Garry", forKey: "address")
        winery5.setValue("99019", forKey: "zipcode")
        winery5.setValue("(509) 255-9205", forKey: "phone")
        winery5.setValue("Liberty Lake Wine Cellars produces small lots of hand crafted wine for those who seek out and appreciate limited edition wines. Specializing in single vineyard wines, we feature the fruit of the Red Mountain AVA. Open: Saturdays 1-5pm.",
            forKey: "about")
        
        winery6.setValue(UIImageJPEGRepresentation(myImage, 1), forKey: "imageData")
        winery6.setValue("Nodland Cellars", forKey: "name")
        winery6.setValue("11616 E Montgomery Dr, Ste 69", forKey: "address")
        winery6.setValue("99206", forKey: "zipcode")
        winery6.setValue("(509) 927-7770", forKey: "phone")
        winery6.setValue("",
            forKey: "about")
        
        winery7.setValue(UIImageJPEGRepresentation(myImage, 1), forKey: "imageData")
        winery7.setValue("V du V Wines", forKey: "name")
        winery7.setValue("12 S Scott St", forKey: "address")
        winery7.setValue("99202", forKey: "zipcode")
        winery7.setValue("(509) 747-3200", forKey: "phone")
        winery7.setValue("",
            forKey: "about")
        
        winery8.setValue(UIImageJPEGRepresentation(myImage, 1), forKey: "imageData")
        winery8.setValue("Barili Cellars", forKey: "name")
        winery8.setValue("608 W Second Ave", forKey: "address")
        winery8.setValue("99201", forKey: "zipcode")
        winery8.setValue("(509) 979-5830", forKey: "phone")
        winery8.setValue("Barili Cellars is an award-winning, boutique winery featuring small lots of hand-crafted wine. Opened in the spring of 2009, Spokane-based Barili features crisp white and rich reds from select vineyards in the Columbia Valley, served in a family-owned business atmosphere.",
            forKey: "about")
        
        winery9.setValue(UIImageJPEGRepresentation(myImage, 1), forKey: "imageData")
        winery9.setValue("Nectar Tasting Room", forKey: "name")
        winery9.setValue("120 N Stevens", forKey: "address")
        winery9.setValue("99201", forKey: "zipcode")
        winery9.setValue("(509) 869-1572", forKey: "phone")
        winery9.setValue("Nectar Tasting Room is shared by five Washington wineries in the heart of downtown Spokane providing over 40 wines in one location. Visitors can enjoy wine from Anelare Winery, Hard Row to Hoe Vineyards, Northwest Cellars, Skylite Cellars, and Terra Blanca Winery. The 2000 square foot space is warm, modern and inviting. You’ll come in for a sip and end up staying for the whole bottle.",
            forKey: "about")
        
        winery10.setValue(UIImageJPEGRepresentation(myImage, 1), forKey: "imageData")
        winery10.setValue("Arbor Crest Wine Cellars", forKey: "name")
        winery10.setValue("4705 N Fruit Hill Rd", forKey: "address")
        winery10.setValue("99217", forKey: "zipcode")
        winery10.setValue("(509) 927-9463", forKey: "phone")
        winery10.setValue("One of the state's oldest wineries producing award-winning Washington wines. Named one of “50 Great Producers Every Wine Lover Should Know” by Wine Spectator. The Cliff House Tasting Room, located on a National Historic Site perched atop a cliff offering spectacular views of the Spokane Valley, is open daily 12-5. Visit the website for details including the Summer Concert Series.",
            forKey: "about")
        
        winery11.setValue(UIImageJPEGRepresentation(myImage, 1), forKey: "imageData")
        winery11.setValue("Patit Creek Cellars", forKey: "name")
        winery11.setValue("822 W Sprague Ave", forKey: "address")
        winery11.setValue("99201", forKey: "zipcode")
        winery11.setValue("(509) 868-4045", forKey: "phone")
        winery11.setValue("Located in the heart of the downtown entertainment district, our tasting room is the perfect place to kickoff or wind down your evening. Enjoy your favorite wines by the glass or share a bottle with friends. Featuring ten wines and a myriad of pairing experiences with locally-sourced, light cuisines. Live entertainment and special events monthly. Visit our website for details.",
            forKey: "about")
        
        winery12.setValue(UIImageJPEGRepresentation(myImage, 1), forKey: "imageData")
        winery12.setValue("Emvy Cellars", forKey: "name")
        winery12.setValue("39 W Pacific Ave", forKey: "address")
        winery12.setValue("99201", forKey: "zipcode")
        winery12.setValue("(509) 838-7815", forKey: "phone")
        winery12.setValue("We leave the wine flights up to you; choose to create your own adventure or let us be your guide. Try a gourmet cheese plate to pair with one of our elegant reds or refreshing whites and visit us on First Friday to enjoy your wine while listening to the tunes of local musicians.",
            forKey: "about")
        
        winery13.setValue(UIImageJPEGRepresentation(myImage, 1), forKey: "imageData")
        winery13.setValue("Latah Creek Wine Cellars", forKey: "name")
        winery13.setValue("13030 E Indiana", forKey: "address")
        winery13.setValue("99216", forKey: "zipcode")
        winery13.setValue("(509) 926-0164", forKey: "phone")
        winery13.setValue("Latah Creek offers guests the opportunity to visit one of the most picturesque small wineries in the area. Latah Creek's award winning wines may be sampled at your leisure while you tour the adjoining winemaking facilities. Open Mon-Sun 9am to 5pm.",
            forKey: "about")
        
        winery14.setValue(UIImageJPEGRepresentation(myImage, 1), forKey: "imageData")
        winery14.setValue("Cougar Crest Estate Winery", forKey: "name")
        winery14.setValue("8 N Post Street", forKey: "address")
        winery14.setValue("99201", forKey: "zipcode")
        winery14.setValue("(509) 241-3850", forKey: "phone")
        winery14.setValue("Cougar Crest Estate Winery was established at the Walla Walla Airport in 2001 by Deborah and David Hansen. Owners of 50 acres of vineyard, all in the Walla Walla Appellation, the move into making wine has been a natural progression for two people with strong backgrounds in science and a love of fine wine. The first vintage was 900 cases; the 2002 vintage will be 4000 cases.",
        forKey: "about")
        
        winery15.setValue(UIImageJPEGRepresentation(myImage, 1), forKey: "imageData")
        winery15.setValue("Townshend Cellar", forKey: "name")
        winery15.setValue("8022 E Green Bluff Rd", forKey: "address")
        winery15.setValue("99005", forKey: "zipcode")
        winery15.setValue("(509) 238-1400", forKey: "phone")
        winery15.setValue("At Townshend Cellar we are dedicated to producing quality wines from the state of Washington. Our wines derive their distinctive flavors from extensive oak aging in small French and American oak barrels and the selection of grapes from some of the finest vineyards in the Columbia Valley. We also produce a truly unique Huckleberry port-style wine made from Wild North Idaho Huckleberries.",
            forKey: "about")
        
        winery16.setValue(UIImageJPEGRepresentation(myImage, 1), forKey: "imageData")
        winery16.setValue("Robert Karl Cellars", forKey: "name")
        winery16.setValue("115 W Pacific Avenue", forKey: "address")
        winery16.setValue("99201", forKey: "zipcode")
        winery16.setValue("(509) 363-1353", forKey: "phone")
        winery16.setValue("Nestled in an old fire station in the Historic Warehouse District, Robert Karl Cellars is a boutique winery dedicated to producing world class wines with grapes grown in Washington's new appellation, Horse Heaven Hills by physician Joseph Gunselman. Wine & Spirits recently selected Robert Karl as one of the Top 100 Wineries in the world.",
            forKey: "about")
        
        winery17.setValue(UIImageJPEGRepresentation(myImage, 1), forKey: "imageData")
        winery17.setValue("Bridge Press Cellars", forKey: "name")
        winery17.setValue("39 W Pacific Ave", forKey: "address")
        winery17.setValue("99201", forKey: "zipcode")
        winery17.setValue("(509) 838-7815", forKey: "phone")
        winery17.setValue("Bridge Press Cellars has the privilege of being Washington State’s 600th winery. We produce wines from some of Washington’s finest vineyards both in Walla Walla and the Columbia Valley. Small production lots allow us to select the best barrels for our signature Cabernet and Merlot blends. This spring we will be releasing our first rose just in time for summer sipping on the patio.",
            forKey: "about")
    
        
        //and commit the changes by saving the managedObjectContext
        var error: NSError?
        if !managedContext.save(&error) {
            println("Could not save \(error), \(error?.userInfo)")
        }
        
        wineries.append(winery1)
        wineries.append(winery2)
        wineries.append(winery3)
        wineries.append(winery4)
        wineries.append(winery5)
        wineries.append(winery6)
        wineries.append(winery7)
        wineries.append(winery8)
        wineries.append(winery9)
        wineries.append(winery10)
        wineries.append(winery11)
        wineries.append(winery12)
        wineries.append(winery13)
        wineries.append(winery14)
        wineries.append(winery15)
        wineries.append(winery16)
        wineries.append(winery17)*/
        
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        //fetch objects from core data
        let appDelegate = UIApplication.sharedApplication().delegate as AppDelegate
        
        let managedContext = appDelegate.managedObjectContext!
        let fetchRequest = NSFetchRequest(entityName:"Winery")
    
        var error: NSError?
        let fetchedResults = managedContext.executeFetchRequest(fetchRequest, error: &error) as [NSManagedObject]?
        
        if let results = fetchedResults {
            wineries = results
        } else {
            println("Could not fetch \(error), \(error!.userInfo)")
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        
        let dvc = segue.destinationViewController as DetailViewController
        
        if let indexPath = self.tableView.indexPathForSelectedRow() {
            let winery = wineries[indexPath.row]
            dvc.currentSelection = winery
        }
        
    }
    
    //TABLEVIEW METHODS//////////////
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
        cell.titleLabel.text = winery.valueForKey("name") as? String
        cell.addressLabel.text = winery.valueForKey("address") as? String
        cell.phoneLabel.text = winery.valueForKey("phone") as? String
        
        let imageData = winery.valueForKey("imageData") as? NSData
        let myImage = UIImage(data: imageData!)
        cell.cellImage.image = myImage
        cell.cellImage.contentMode = UIViewContentMode.ScaleAspectFit
    }
    
}