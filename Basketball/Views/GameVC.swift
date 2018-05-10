//
//  GameVC.swift
//  Basketball
//
//  Created by Rylan Evans on 5/6/18.
//  Copyright © 2018 Rylan Evans. All rights reserved.
//

import UIKit

class GameVC: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func cancelGameButtonPressed(_ sender: Any) {
        let alertController = UIAlertController(title: "X CANCEL GAME", message: "Are you sure you want to cancel your game?", preferredStyle: .alert)
        
        let cancelGameAction = UIAlertAction(title: "X Cancel Game", style: .default, handler: {
            alert -> Void in
            self.dismiss(animated: true, completion: nil)
        })
        
        let continueGameAction = UIAlertAction(title: "▹ Continue Game", style: .default, handler: {
            (action : UIAlertAction!) -> Void in
        })
        
        alertController.addAction(cancelGameAction)
        alertController.addAction(continueGameAction)
        
        alertController.view.tintColor = #colorLiteral(red: 0.9530000091, green: 0.6980000138, blue: 0.3289999962, alpha: 1)
        
        self.present(alertController, animated: true, completion: nil)
    }
    
    @IBAction func saveGameButtonPressed(_ sender: Any) {
        let alertController = UIAlertController(title: "⟳ END GAME", message: "Is the game over?", preferredStyle: .alert)
        
        let cancelGameAction = UIAlertAction(title: "✓ End Game", style: .default, handler: {
            alert -> Void in
            //            self.dismiss(animated: true, completion: nil)
            
            let alertController = UIAlertController(title: "", message: "Did you win or loose?", preferredStyle: .alert)
            
            let cancelGameAction = UIAlertAction(title: "✓ Won", style: .default, handler: {
                alert -> Void in
                self.dismiss(animated: true, completion: nil)
            })
            
            let continueGameAction = UIAlertAction(title: "X Lost", style: .default, handler: {
                (action : UIAlertAction!) -> Void in
                self.dismiss(animated: true, completion: nil)
            })
            
            alertController.addAction(cancelGameAction)
            alertController.addAction(continueGameAction)
            
            alertController.view.tintColor = #colorLiteral(red: 0.9530000091, green: 0.6980000138, blue: 0.3289999962, alpha: 1)
            
            self.present(alertController, animated: true, completion: nil)
        })
        
        let continueGameAction = UIAlertAction(title: "▹ Continue Game", style: .default, handler: {
            (action : UIAlertAction!) -> Void in
        })
        
        alertController.addAction(cancelGameAction)
        alertController.addAction(continueGameAction)
        
        alertController.view.tintColor = #colorLiteral(red: 0.9530000091, green: 0.6980000138, blue: 0.3289999962, alpha: 1)
        
        self.present(alertController, animated: true, completion: nil)
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}
