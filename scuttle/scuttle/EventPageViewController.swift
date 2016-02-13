//
//  EventPageViewController.swift
//  scuttle
//
//  Created by Andrew Marmorstein on 2/13/16.
//  Copyright © 2016 HackCWRU. All rights reserved.
//

import UIKit

class EventPageViewController: UIViewController {

    // MARK: IP messaging memebers
    var client: TwilioIPMessagingClient? = nil
    var generalChannel: TWMChannel? = nil
    var identity = ""
    var messages: [TWMMessage] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Fetch Access Token form the server and initialize IPM Client - this assumes you are running
        // the PHP starter app on your local machine, as instructed in the quick start guide
        let deviceId = UIDevice.currentDevice().identifierForVendor!.UUIDString
        
        webInterface.requestToken(deviceId)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func backToEventPageSegue(segue:UIStoryboardSegue) {
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
