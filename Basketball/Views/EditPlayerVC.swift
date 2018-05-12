//
//  EditPlayerVC.swift
//  Basketball
//
//  Created by Rylan Evans on 5/6/18.
//  Copyright © 2018 Rylan Evans. All rights reserved.
//

import UIKit
import AVFoundation

class EditPlayerVC: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource, UITextFieldDelegate {
    
    var B = "B"
    
    @IBOutlet weak var bgHide: UIImageView!
    
    @IBOutlet weak var firstTxt: UITextField!
    
    @IBOutlet weak var lastTxt: UITextField!
    
    @IBOutlet weak var positionPicker: UIPickerView!
    
    @IBOutlet weak var numberTxt: UITextField!
    
    @IBAction func backBtnPressed(_ sender: Any) {
        playClick()
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func positionBtn(_ sender: Any) {
        self.view.endEditing(true)
        bgHide.isHidden = true
    }
    
    @IBAction func selectBtn(_ sender: Any) {
        bgHide.isHidden = false
    }
    
    @IBOutlet weak var positionLbl: UILabel!
    
    var clickSound: AVAudioPlayer!
    
    let pickerData = [" 1) Point Guard", " 2) Shooting Guard", " 3) Small Forward", " 4) Power Forward", " 5) Center"]
    
    let positionShort = [" 1) Point Guard": "PG", " 2) Shooting Guard": "SG", " 3) Small Forward": "SF", " 4) Power Forward": "PF", " 5) Center": "CR", " Position": ""]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        positionPicker.dataSource = self
        positionPicker.delegate = self
        
        
        let click = Bundle.main.path(forResource: "Click", ofType: "wav")
        let clickURL = URL(fileURLWithPath: click!)
        do {
            try clickSound = AVAudioPlayer(contentsOf: clickURL)
        } catch let err as NSError {
            print(err.debugDescription)
        }
        
    }
    
    func playClick() {
        if clickSound.isPlaying {
            clickSound.stop()
        }
        clickSound.play()
    }
    
    @IBAction func playerBtn(_ sender: Any) {
        playClick()
        
        let firstName = firstTxt.text ?? ""
        let lastName = lastTxt.text ?? ""
        let positionEnter = positionShort["\(positionLbl.text ?? "")"]!
        let numberEnter = numberTxt.text ?? ""
        
        let profile = Profile(firstName: firstName, lastName: lastName, positionEnter: positionEnter, numberEnter: numberEnter)
        
        let controller = GameVC.create(profile: profile)
        self.present(controller, animated: true, completion: nil)
        
        //        performSegue(withIdentifier: "GameViewController", sender: sender)
    }
    
    //    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    //        guard let identifier = segue.identifier else {
    //            return
    //        }
    //
    //        switch identifier {
    //        case "GameViewController":
    //            guard let controller = segue.destination as? GameViewController else {
    //                fatalError("GameViewController named segue must have destination controller type of GameViewController")
    //            }
    //
    //            controller.set(firstName: firstTxt.text ?? "", lastName: lastTxt.text ?? "")
    //
    ////            controller.firstName = firstTxt.text ?? ""
    ////            controller.lastName = lastTxt.text ?? ""
    //        default:
    //            break
    //        }
    //    }
    
    // MARK: UIPickerView Data Source/Delegate
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerData.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerData[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        positionLbl.text = pickerData[row]
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        self.view.endEditing(true)
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        textField.resignFirstResponder()
        
        return true
        
    }
    
    
}

