//
//  PlayersCVC.swift
//  Basketball
//
//  Created by Rylan Evans on 5/13/18.
//  Copyright © 2018 Rylan Evans. All rights reserved.
//

import UIKit

//private let reuseIdentifier = "PlayersCell"

class PlayersCVC: UICollectionViewController {
    
    @IBOutlet weak var playersFlowLayout: UICollectionViewFlowLayout!
    
    var names = ["DAD", "LILLY", "REED", "DAD", "LILLY", "REED", "DAD", "LILLY", "REED", "DAD", "LILLY", "REED"]
    var images = [UIImage(named: "Dad"), UIImage(named: "Lilly"), UIImage(named: "Reed"), UIImage(named: "Dad"), UIImage(named: "Lilly"), UIImage(named: "Reed"), UIImage(named: "Dad"), UIImage(named: "Lilly"), UIImage(named: "Reed"), UIImage(named: "Dad"), UIImage(named: "Lilly"), UIImage(named: "Reed")]
    
    private let leftAndRightPaddings: CGFloat = 32.0
    private let numberOfItemsPerRow: CGFloat = 2.0
    private let heightAdjustment: CGFloat = 30.0

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Option 1
//        let space: CGFloat = 3.0
//        let dimension = (self.view.frame.size.width - (2 * space)) / 3.0
//
//        playersFlowLayout.minimumInteritemSpacing = space
//        playersFlowLayout.minimumLineSpacing = space
//        playersFlowLayout.itemSize = CGSize(width: dimension, height: dimension)
        
        // Option 2
//        let widthTest = (CGRectGetWidth(collectionView!.frame) - leftAndRightPaddings) / numberOfItemsPerRow
        let width = ((self.view.frame.size.width) - leftAndRightPaddings) / numberOfItemsPerRow
//        let layout = collectionViewLayout as! UICollectionViewFlowLayout
//        layout.itemSize = CGSizeMake(width, width + heightAdjustment)
        playersFlowLayout.itemSize = CGSize(width: width, height: (width + heightAdjustment))

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Register cell classes
//        self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
        return images.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PlayersCell", for: indexPath)
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PlayersCell", for: indexPath) as! PlayersCell
    
        // Configure the cell
//        cell.playerPhotoImageView.image = UIImage(named: names[indexPath.row])
//        cell.playerFullNameLabel.text = String(names[indexPath.row])
        cell.playerPhotoImageView.image = images[indexPath.row]
        cell.playerFullNameLabel.text = names[indexPath.row]
//        configureCell(cell: cell, indexPath: indexPath as NSIndexPath)
//        cell.delegate = self
        
        return cell
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("Selected row is", indexPath.row)
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
    
    // Function to configure each cell
//    func configureCell(cell: PlayersCell, indexPath: NSIndexPath) {
//        let game = gameController.object(at: indexPath as IndexPath)
//        cell.configureGameCell(game: game)
//    }

}
