//
//  LoginViewController.swift
//  scuttle
//
//  Created by Harry Nelken on 2/12/16.
//  Copyright © 2016 HackCWRU. All rights reserved.
//

import UIKit


class LoginViewController: UIViewController {

    @IBOutlet weak var usernameField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        loginButton.layer.cornerRadius = 12.0
        loginButton.clipsToBounds = true
    }
    
    override func viewDidLayoutSubviews() {
        // Disable navigation bar
        navigationController?.navigationBarHidden = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func loginPressed(sender: AnyObject) {
        
        // Check password
        if (usernameField.text?.characters.count > 0 &&
            passwordField.text?.characters.count > 0) {
            
            // Transition to event feed
            performSegueWithIdentifier(kLoginSegueID, sender: self)
        }
        else {
            let alert = UIAlertController(title: "Couldn't login!",
                message: "Invalid username or password",
                preferredStyle: UIAlertControllerStyle.Alert)
            
            let okAction = UIAlertAction(title: "OK", style: .Default) { (action:UIAlertAction!) in
                
            }
            alert.addAction(okAction)
            
            self.presentViewController(alert, animated: true, completion: nil)
        }
    }
    
    @IBAction func logOutSegue(segue:UIStoryboardSegue) {
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
