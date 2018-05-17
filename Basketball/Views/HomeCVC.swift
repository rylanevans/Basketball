//
//  HomeCVC.swift
//  Basketball
//
//  Created by Rylan Evans on 5/5/18.
//  Copyright © 2018 Rylan Evans. All rights reserved.
//

import UIKit

//private let reuseIdentifier = "Cell"

class HomeCVC: UICollectionViewController {
    
    var firstName = ["STEPHEN", "KEVIN", "LEBRON", "JAMES", "RUSSELL"]
    var lastName = ["CURRY", "DURANT", "JAMES", "HARDEN", "WESTBROOK"]
    var images = [UIImage(named: "Stephen"), UIImage(named: "Kevin"), UIImage(named: "LeBron"), UIImage(named: "James"), UIImage(named: "Russell")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Register cell classes
//        self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)
        
        // Do any additional setup after loading the view.
        
//        NotificationCenter.default.addObserver(self,
//                                               selector: #selector(showPlayers),
//                                               name: NSNotification.Name("ShowPlayers"),
//                                               object: nil)
//        NotificationCenter.default.addObserver(self,
//                                               selector: #selector(showGames),
//                                               name: NSNotification.Name("ShowGames"),
//                                               object: nil)
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(showStats),
                                               name: NSNotification.Name("ShowStats"),
                                               object: nil)
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(showDictionary),
                                               name: NSNotification.Name("ShowDictionary"),
                                               object: nil)
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(showDeveloper),
                                               name: NSNotification.Name("ShowDeveloper"),
                                               object: nil)
    }
    
//    @objc func showPlayers() {
//        performSegue(withIdentifier: "ShowPlayers", sender: nil)
//    }
//
//    @objc func showGames() {
//        performSegue(withIdentifier: "ShowGames", sender: nil)
//    }
    
    @objc func showStats() {
        performSegue(withIdentifier: "ShowStats", sender: nil)
    }
    
    @objc func showDictionary() {
        performSegue(withIdentifier: "ShowDictionary", sender: nil)
    }
    
    @objc func showDeveloper() {
        performSegue(withIdentifier: "ShowDeveloper", sender: nil)
    }
    
    
    @IBAction func onMoreTapped() {
        print("TOGGLE SIDE MENU")
        NotificationCenter.default.post(name: NSNotification.Name("ToggleSideMenu"), object: nil)
    }
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using [segue destinationViewController].
     // Pass the selected object to the new view controller.
     }
     */
    
    // MARK: UICollectionViewDataSource
    
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return firstName.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "BasketballCardProfileCell", for: indexPath) as! BasketballCardProfileCell
        
        // Configure the cell
        cell.playerPhotoImageView.image = images[indexPath.row]
        cell.playerFirstNameLabel.text = firstName[indexPath.row]
        cell.playerLastNameLabel.text = lastName[indexPath.row]
        
        // Configure the cell
        
        return cell
    }
    
    // MARK: UICollectionViewDelegate
    
    /*
     // Uncomment this method to specify if the specified item should be highlighted during tracking
     override func collectionView(_ collectionView: UICollectionView, shouldHighlightItemAt indexPath: IndexPath) -> Bool {
     return true
     }
     */
    
    /*
     // Uncomment this method to specify if the specified item should be selected
     override func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
     return true
     }
     */
    
    /*
     // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
     override func collectionView(_ collectionView: UICollectionView, shouldShowMenuForItemAt indexPath: IndexPath) -> Bool {
     return false
     }
     
     override func collectionView(_ collectionView: UICollectionView, canPerformAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) -> Bool {
     return false
     }
     
     override func collectionView(_ collectionView: UICollectionView, performAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) {
     
     }
     */
    
}


