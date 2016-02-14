//
//  Constants.swift
//  scuttle
//
//  Created by Harry Nelken on 2/12/16.
//  Copyright © 2016 HackCWRU. All rights reserved.
//

import Foundation

// SEGUE IDENTIFIERS
let kLoginSegueID = "loginSegue"


// CELL IDENTIFIERS
let kEventCellID = "eventFeedCell"


// GLOBAL REFS
let webInterface = WebInterface()


// API ROUTES
let kBaseURL = "http://localhost:8000/"
let kServerURL = "http://172.19.36.37/"
let kVerifyUserRoute = "get/verify_user.php"
let kTokenRequestRoute = "token.php?device="
let kGetEventsRoute = "get/user_events.php?id="