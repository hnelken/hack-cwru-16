//
//  SettingsViewController.swift
//  scuttle
//
//  Created by Andrew Marmorstein on 2/13/16.
//  Copyright © 2016 HackCWRU. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    
    @IBOutlet weak var userImage: UIImageView!
    @IBOutlet weak var userName: UITextField!
    
    
    @IBAction func saveChanges(sender: AnyObject) {
    }
    
    @IBAction func linkToFB(sender: AnyObject) {
    }
    
    @IBAction func editUserName(sender: AnyObject) {
    }
    
    @IBAction func editUserImage(sender: AnyObject) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
