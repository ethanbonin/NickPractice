//
//  InfoScreenVC.swift
//  nickproject
//
//  Created by Ethan Bonin on 4/6/18.
//  Copyright © 2018 Ethan Bonin. All rights reserved.
//

import UIKit

class InfoScreenVC: UIViewController {

    
    /** Active Components */
    @IBOutlet var roomNameLabel: UILabel!
    
    /**Active Data set */
    var roomName: String?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpLabel()
    }
    
    
    func setUpLabel() {
        roomNameLabel.text = roomName!
        if let name = roomName {
            roomNameLabel.text = name
        }
    }
}
