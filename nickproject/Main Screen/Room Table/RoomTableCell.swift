//
//  RoomTableCell.swift
//  nickproject
//
//  Created by Ethan Bonin on 4/6/18.
//  Copyright © 2018 Ethan Bonin. All rights reserved.
//

import UIKit

class RoomTableCell: UITableViewCell {

        
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    @IBAction func roomButtonPushed(_ sender: Any) {
        let button = sender as! UIButton
        
        print("You have pushed me! I am room number", button.titleLabel?.text!)
    }
    
    
}
