//
//  SideMenuVC.swift
//  Basketball
//
//  Created by Rylan Evans on 5/5/18.
//  Copyright © 2018 Rylan Evans. All rights reserved.
//

import UIKit

class SideMenuVC: UITableViewController {
    
    // Table view section header
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let view = UIView()
//        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
        var title = ""
        if section == 0 {
            title = "pages:"
        } else if section == 1 {
            title = "feedback:"
        } else if section == 2 {
            title = "help:"
        } else if section == 3 {
            title = "options:"
        } else {
            title = "idk"
        }
        
        let label = UILabel()
        label.text = title
        label.frame = CGRect(x: 8, y:12, width: 200, height: 25)
        label.font = UIFont(name: "Varsity", size: 15)!
        label.textColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        view.addSubview(label)
        
        return view
    }
    
    // Header height
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 30
    }
    
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
            case 0: NotificationCenter.default.post(name: NSNotification.Name("ShowDictionary"), object: nil)
                self.tableView.reloadData()
            case 1: self.tableView.reloadData()
            case 2: NotificationCenter.default.post(name: NSNotification.Name("ShowDeveloper"), object: nil)
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

