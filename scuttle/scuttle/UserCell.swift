//
//  UserCell.swift
//  scuttle
//
//  Created by Andrew Marmorstein on 2/13/16.
//  Copyright © 2016 HackCWRU. All rights reserved.
//

import UIKit

class UserCell: UITableViewCell {

    @IBOutlet weak var userPicture: UIImageView!
    @IBOutlet weak var userName: UILabel!
    @IBOutlet weak var inviteButton: UIButton!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
