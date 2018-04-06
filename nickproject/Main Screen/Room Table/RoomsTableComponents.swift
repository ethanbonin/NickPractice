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
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseCell") as! RoomTableCell
       
        
        let title = currentRoomNames[indexPath.row]
        cell.textLabel?.text = title
        
        return cell
    }
    
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("You selected", indexPath.row)
        
        //Grab cell info
        let cell = tableView.cellForRow(at: indexPath)
        let roomName = cell?.textLabel?.text!

        //Start to prepare ViewController
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let destinationVC = storyboard.instantiateViewController(withIdentifier: "InfoScreenVC") as! InfoScreenVC
        
        destinationVC.roomName = roomName
        
        self.present(destinationVC, animated: true, completion: nil)
    }
}

