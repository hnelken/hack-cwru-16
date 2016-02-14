//
//  CreateEventViewController.swift
//  scuttle
//
//  Created by Andrew Marmorstein on 2/13/16.
//  Copyright © 2016 HackCWRU. All rights reserved.
//

import UIKit

class CreateEventViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    @IBOutlet weak var eventPicture: UIImageView!
    @IBOutlet weak var eventName: UITextField!
    @IBOutlet weak var eventLocation: UITextField!
    @IBOutlet weak var startDate: UITextField!
    @IBOutlet weak var endDate: UITextField!
    @IBOutlet weak var eventDescription: UITextView!
    
    var userArray = [String]()

    @IBAction func addImage(sender: AnyObject) {
    }
    
    @IBAction func createEvent(sender: AnyObject) {
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        userArray.append("Thad Castle")
        userArray.append("Alex Moran")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return userArray.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(kUserCellID, forIndexPath: indexPath) as! UserCell
        
        //cell configuration
        
        let userName = userArray[indexPath.row]
        
        cell.userName.text = userName
        cell.userPicture.image = UIImage(contentsOfFile: "scuttle.png")
        
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        let cell = tableView.cellForRowAtIndexPath(indexPath)
        
        if cell!.accessoryType == .Checkmark {
            cell!.accessoryType = .None
        } else {
            cell!.accessoryType = .Checkmark
        }
        
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
