//
//  ViewController.swift
//  nickproject
//
//  Created by Ethan Bonin on 4/6/18.
//  Copyright © 2018 Ethan Bonin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    /* ACTIVE COMPONENTS */
    @IBOutlet var roomsTable: UITableView!
    
    /* Active data set */
    var currentRoomNames = ["Main Room", "Second Room"]

    override func viewDidLoad() {
        super.viewDidLoad()
        constructTableView()
    }

    @IBAction func addNewRoomPushed(_ sender: Any) {
        
        let alert = UIAlertController(title: "Add New Room", message: "What do you want to call this room", preferredStyle: .alert)
        alert.addTextField(configurationHandler: { (textField) in
            textField.placeholder = "Enter First Name"
        })
        
        alert.addAction(UIAlertAction(title: "DONE", style: .default, handler: { (action) in
            if let textField = alert.textFields?[0] {
                let roomName = textField.text!
                
                //Update Table
                self.roomsTable.beginUpdates()
                self.currentRoomNames.insert(roomName, at: 0)
                self.roomsTable.insertRows(at: [IndexPath(item: 0, section: 0)], with: .automatic)
                self.roomsTable.endUpdates()
                
                //Dismiss the alert Table
                self.dismiss(animated: true, completion: nil)
            }
        }))
        
        present(alert, animated: true, completion: nil)
    }
}




