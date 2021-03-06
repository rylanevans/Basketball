//
//  DeveloperTVC.swift
//  Basketball
//
//  Created by Rylan Evans on 5/6/18.
//  Copyright © 2018 Rylan Evans. All rights reserved.
//

import UIKit
import SafariServices
import MessageUI

class DeveloperTVC: UITableViewController, MFMailComposeViewControllerDelegate {
    
    @IBOutlet weak var tableCell: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        self.navigationController?.navigationBar.prefersLargeTitles = true
//        self.navigationController?.navigationItem.largeTitleDisplayMode = .automatic
//        self.navigationController?.navigationBar.largeTitleTextAttributes = [
//            NSAttributedStringKey.foregroundColor: #colorLiteral(red: 0.006879295688, green: 0.4784864783, blue: 0.9987255931, alpha: 1),
//            NSAttributedStringKey.font: UIFont(name: "Noteworthy-Bold", size: 35)!
//        ]
        
//        clickSoundURL()
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //        self.playClick()
        if indexPath.section == 0 {
            switch indexPath.row {
            case 0: aboutRylan()
            case 1: allApps()
            case 2: digiLilly()
            case 3: facebook()
            case 4: twitter()
            case 5: linkedin()
            case 6: patreon()
            default: print("Error with MoreTVC index selection")
            }
        }
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableViewAutomaticDimension
    }
    
    
    func aboutRylan() {
    }
    
    func rylanEvans() {
        let URL = NSURL(string: "https://www.rylanevans.com")!
        let rylanEvansWeb = SFSafariViewController(url: URL as URL)
        rylanEvansWeb.delegate = self
        
        present(rylanEvansWeb, animated: true, completion: nil)
    }
    
    func basketballSSTapped() {
        UIApplication.shared.open(NSURL(string: "itms-apps://itunes.apple.com/app/id1224378809?")! as URL, options: ["":""], completionHandler: nil)
    }
    
    func shareWithNetwork() {
        let string: String = String("Checkout this Family Home Evening App!\n\nhttps://itunes.apple.com/us/app/apple-store/id1292069519")
        let activityViewController = UIActivityViewController(activityItems: [string], applicationActivities: nil)
        present(activityViewController, animated: true, completion: nil)
    }
    
    func allApps() {
        UIApplication.shared.open(NSURL(string: "itms-apps://itunes.apple.com/us/developer/rylan-evans/id1224378808")! as URL, options: ["":""], completionHandler: nil)
    }
    
    func digiLilly() {
        let URL = NSURL(string: "https://sites.google.com/view/digi-lilly/home")!
        let rylanEvansWeb = SFSafariViewController(url: URL as URL)
        rylanEvansWeb.delegate = self
        
        present(rylanEvansWeb, animated: true, completion: nil)
    }
    
    func facebook() {
        let id = 660877290751092
        let url = NSURL(string: "fb://profile/\(id)")!
        if UIApplication.shared.canOpenURL(url as URL) == true {
            UIApplication.shared.open(url as URL, options: ["":""], completionHandler: nil)
        } else {
            let URL = NSURL(string: "https://www.facebook.com/rylanevans.apps/")!
            let facebookWeb = SFSafariViewController(url: URL as URL)
            facebookWeb.delegate = self
            
            present(facebookWeb, animated: true, completion: nil)
        }
        
        //        UIApplication.shared.open(NSURL(string:"https://www.facebook.com/rylanevans.apps/")! as URL)
    }
    
    // MARK: -  MFMailComposeViewControllerDelegate Method to subscribe
    
    func twitter() {
        let id = "rylan_evans"
        //        156383146
        let url = NSURL(string: "twitter://user?screen_name=\(id)")!
        if UIApplication.shared.canOpenURL(url as URL) == true {
            UIApplication.shared.open(url as URL, options: ["":""], completionHandler: nil)
        } else {
            let URL = NSURL(string: "https://twitter.com/rylan_evans")!
            let twitterWeb = SFSafariViewController(url: URL as URL)
            twitterWeb.delegate = self
            
            present(twitterWeb, animated: true, completion: nil)
        }
    }
    
    func linkedin() {
        let id = "rylanevans"
        let url = NSURL(string: "voyager://in/\(id)")!
        if UIApplication.shared.canOpenURL(url as URL) == true {
            UIApplication.shared.open(url as URL, options: ["":""], completionHandler: nil)
        } else {
            let URL = NSURL(string: "https://www.linkedin.com/in/rylanevans/")!
            let linkedinWeb = SFSafariViewController(url: URL as URL)
            linkedinWeb.delegate = self
            
            present(linkedinWeb, animated: true, completion: nil)
        }
    }
    
    func yelp() {
        let id = "rylan-evans-apps-pleasant-grove-2"
        let url = NSURL(string: "yelp:///biz/\(id)")!
        
        if UIApplication.shared.canOpenURL(url as URL) == true {
            UIApplication.shared.open(url as URL, options: ["":""], completionHandler: nil)
        } else {
            let URL = NSURL(string: "https://www.yelp.com/biz/rylan-evans-apps-pleasant-grove-2")!
            
            let yelpWebVC = SFSafariViewController(url: URL as URL)
            yelpWebVC.delegate = self
            
            present(yelpWebVC, animated: true, completion: nil)
        }
    }
    
    func google() {
        let id = "?q=Rylan+Evans'+Apps&center=40.3963818,-112.038677&zoom=10"
        let url = NSURL(string: "comgooglemaps://\(id)")!
        
        if UIApplication.shared.canOpenURL(url as URL) == true {
            UIApplication.shared.open(url as URL, options: ["":""], completionHandler: nil)
        } else {
            let URL = NSURL(string: "https://www.google.com/maps/search/Rylan+Evans'+Apps/@40.3963818,-112.038677,10z")!
            
            let googleWebVC = SFSafariViewController(url: URL as URL)
            googleWebVC.delegate = self
            
            present(googleWebVC, animated: true, completion: nil)
        }
    }
    
    func patreon() {
        let id = "rylanevans"
        let url = NSURL(string: "https://www.patreon.com/\(id)")!
        
        if UIApplication.shared.canOpenURL(url as URL) == true {
            UIApplication.shared.open(url as URL, options: ["":""], completionHandler: nil)
        } else {
            let URL = NSURL(string: "https://www.patreon.com/rylanevans")!
            
            let patreonWebVC = SFSafariViewController(url: URL as URL)
            patreonWebVC.delegate = self
            
            present(patreonWebVC, animated: true, completion: nil)
        }
    }
    
    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
        controller.dismiss(animated: true, completion: nil)
    }
}

extension DeveloperTVC: SFSafariViewControllerDelegate {
    func safariViewControllerDidFinish(_ controller: SFSafariViewController) {
        controller.dismiss(animated: true, completion: nil)
    }
}
