//
//  SettingTableViewCell.swift
//  MenloCalendar
//
//  Created by Dhruv Mangtani on 8/28/16.
//  Copyright © 2016 Ben Siminoff. All rights reserved.
//

import UIKit

class SettingTableViewCell: UITableViewCell {

    @IBOutlet weak var subjectField: UITextField!
    @IBOutlet weak var blockLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
