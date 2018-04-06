//
//  RoomsTableComponents.swift
//  nickproject
//
//  Created by Ethan Bonin on 4/6/18.
//  Copyright © 2018 Ethan Bonin. All rights reserved.
//

import Foundation
import UIKit



// MARK - Tableview for buttons
extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func constructTableView() {
        roomsTable.delegate = self
        roomsTable.dataSource = self
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return currentRoomNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseCell") as! UITableViewCell
       
        cell.textLabel?.text = currentRoomNames[indexPath.row]
        
        return cell
    }
}

