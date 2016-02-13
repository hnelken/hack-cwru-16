//
//  EventFeedCell.swift
//  scuttle
//
//  Created by Harry Nelken on 2/12/16.
//  Copyright © 2016 HackCWRU. All rights reserved.
//

import UIKit

class EventFeedCell: UITableViewCell {
    
    @IBOutlet weak var eventImageView: UIImageView!
    @IBOutlet weak var eventNameLabel: UILabel!
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
