//
//  DictionaryVC.swift
//  Basketball
//
//  Created by Rylan Evans on 5/6/18.
//  Copyright © 2018 Rylan Evans. All rights reserved.
//

import UIKit
import AVFoundation

class DictionaryVC: UIViewController {
    @IBOutlet weak var EffInfo: UILabel!
    
    @IBOutlet weak var TsInfo: UILabel!
    
    @IBOutlet weak var FtInfo: UILabel!
    
    @IBOutlet weak var FgInfo: UILabel!
    
    @IBOutlet weak var ThreepInfo: UILabel!
    
    @IBAction func EffB(_ sender: Any) {
        playClick()
        TsInfo.isHidden = true
        FtInfo.isHidden = true
        FgInfo.isHidden = true
        ThreepInfo.isHidden = true
        toggleHideEff()
    }
    
    @IBAction func TsB(_ sender: Any) {
        playClick()
        EffInfo.isHidden = true
        FtInfo.isHidden = true
        FgInfo.isHidden = true
        ThreepInfo.isHidden = true
        toggleHideTs()
    }
    
    @IBAction func FtB(_ sender: Any) {
        playClick()
        EffInfo.isHidden = true
        TsInfo.isHidden = true
        FgInfo.isHidden = true
        ThreepInfo.isHidden = true
        toggleHideFt()
    }
    
    @IBAction func FgB(_ sender: Any) {
        playClick()
        EffInfo.isHidden = true
        TsInfo.isHidden = true
        FtInfo.isHidden = true
        ThreepInfo.isHidden = true
        toggleHideFg()
    }
    
    @IBAction func TpB(_ sender: Any) {
        playClick()
        EffInfo.isHidden = true
        TsInfo.isHidden = true
        FtInfo.isHidden = true
        FgInfo.isHidden = true
        toggleHide3p()
    }
    
    @IBAction func backBtn(_ sender: Any) {
        playClick()
        dismiss(animated: true, completion: nil)
    }
    
    var clickSound: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ThreepInfo.layer.borderWidth = 1
        EffInfo.layer.borderWidth = 1
        TsInfo.layer.borderWidth = 1
        FtInfo.layer.borderWidth = 1
        FgInfo.layer.borderWidth = 1
        ThreepInfo.layer.borderWidth = 1
        
        let click = Bundle.main.path(forResource: "Click", ofType: "wav")
        let clickURL = URL(fileURLWithPath: click!)
        do {
            try clickSound = AVAudioPlayer(contentsOf: clickURL)
        } catch let err as NSError {
            print(err.debugDescription)
        }
        
    }
    
    func toggleHideEff() {
        if EffInfo.isHidden {
            return EffInfo.isHidden = false
        } else {
            return EffInfo.isHidden = true
        }
    }
    
    func toggleHideTs() {
        if TsInfo.isHidden {
            return TsInfo.isHidden = false
        } else {
            return TsInfo.isHidden = true
        }
    }
    
    func toggleHideFt() {
        if FtInfo.isHidden {
            return FtInfo.isHidden = false
        } else {
            return FtInfo.isHidden = true
        }
    }
    
    func toggleHideFg() {
        if FgInfo.isHidden {
            return FgInfo.isHidden = false
        } else {
            return FgInfo.isHidden = true
        }
    }
    
    func toggleHide3p() {
        if ThreepInfo.isHidden {
            return ThreepInfo.isHidden = false
        } else {
            return ThreepInfo.isHidden = true
        }
    }
    
    func playClick() {
        if clickSound.isPlaying {
            clickSound.stop()
        }
        clickSound.play()
    }
    
    
}
