//
//  InvitePageViewController.swift
//  scuttle
//
//  Created by Andrew Marmorstein on 2/13/16.
//  Copyright © 2016 HackCWRU. All rights reserved.
//

import UIKit

class InvitePageViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, UISearchBarDelegate {

    var userArray = [String]()
    var filteredUserArray = [String]()
    var searchActive = false
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var userTable: UITableView!
    
    @IBAction func sendInvites(sender: AnyObject) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        userArray.append("Thad Castle")
        userArray.append("Alex Moran")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func searchBarTextDidBeginEditing(searchBar: UISearchBar) {
        searchActive = true;
    }
    
    func searchBarTextDidEndEditing(searchBar: UISearchBar) {
        searchActive = false;
    }
    
    func searchBarCancelButtonClicked(searchBar: UISearchBar) {
        searchActive = false;
    }
    
    func searchBarSearchButtonClicked(searchBar: UISearchBar) {
        searchActive = false;
    }
    
    func searchBar(searchBar: UISearchBar, textDidChange searchText: String) {
        
        filteredUserArray = userArray.filter({ (text) -> Bool in
            let tmp: NSString = text
            let range = tmp.rangeOfString(searchText, options: NSStringCompareOptions.CaseInsensitiveSearch)
            return range.location != NSNotFound
        })
        if(filteredUserArray.count == 0){
            searchActive = false;
        } else {
            searchActive = true;
        }
        userTable.reloadData()
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if(searchActive) {
            return filteredUserArray.count
        }
        return userArray.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(kUserCellID, forIndexPath: indexPath) as? InviteUserCell
        
        //cell configuration
        if(searchActive){
            cell?.userName.text = filteredUserArray[indexPath.row]
            cell?.userPicture.image = UIImage(contentsOfFile: "scuttle.png")
        } else {
            cell?.userName.text = userArray[indexPath.row]
            cell?.userPicture.image = UIImage(contentsOfFile: "scuttle.png")
        }
        return cell!
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
