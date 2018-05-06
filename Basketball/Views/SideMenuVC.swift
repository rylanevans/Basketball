//
//  SideMenuVC.swift
//  Basketball
//
//  Created by Rylan Evans on 5/5/18.
//  Copyright © 2018 Rylan Evans. All rights reserved.
//

import UIKit

class SideMenuVC: UITableViewController {
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
        NotificationCenter.default.post(name: NSNotification.Name("ToggleSideMenu"), object: nil)
        
        switch indexPath.section {
        case 0:
            switch indexPath.row {
            case 0: self.tableView.reloadData()
            case 1: NotificationCenter.default.post(name: NSNotification.Name("ShowGames"), object: nil)
                self.tableView.reloadData()
            case 2: NotificationCenter.default.post(name: NSNotification.Name("ShowStats"), object: nil)
                self.tableView.reloadData()
            default: break
        }
        case 1:
            switch indexPath.row {
            case 0: self.tableView.reloadData()
            case 1: self.tableView.reloadData()
            case 2: self.tableView.reloadData()
            case 3: self.tableView.reloadData()
            default: break
            }
        case 2:
            switch indexPath.row {
            case 0: NotificationCenter.default.post(name: NSNotification.Name("ShowHelp"), object: nil)
                self.tableView.reloadData()
            case 1: NotificationCenter.default.post(name: NSNotification.Name("ShowDeveloper"), object: nil)
                self.tableView.reloadData()
            default: break
            }
        case 3:
            switch indexPath.row {
            case 0: self.tableView.reloadData()
            case 1: self.tableView.reloadData()
            default: break
            }
        default: break
        }
    }
    
}

