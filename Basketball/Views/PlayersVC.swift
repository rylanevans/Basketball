//
//  PlayersVC.swift
//  Basketball
//
//  Created by Rylan Evans on 5/5/18.
//  Copyright © 2018 Rylan Evans. All rights reserved.
//

import UIKit

class PlayersVC: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(showProfile),
                                               name: NSNotification.Name("ShowProfile"),
                                               object: nil)
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(showSettings),
                                               name: NSNotification.Name("ShowSettings"),
                                               object: nil)
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(showSignIn),
                                               name: NSNotification.Name("ShowSignIn"),
                                               object: nil)
    }
    
    @objc func showProfile() {
        performSegue(withIdentifier: "ShowProfile", sender: nil)
    }
    
    @objc func showSettings() {
        performSegue(withIdentifier: "ShowSettings", sender: nil)
    }
    
    @objc func showSignIn() {
        performSegue(withIdentifier: "ShowSignIn", sender: nil)
    }
    
    
    @IBAction func onMoreTapped() {
        print("TOGGLE SIDE MENU")
        NotificationCenter.default.post(name: NSNotification.Name("ToggleSideMenu"), object: nil)
    }
    
    
    
}

