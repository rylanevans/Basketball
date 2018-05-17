//
//  GameVC.swift
//  Basketball
//
//  Created by Rylan Evans on 5/6/18.
//  Copyright © 2018 Rylan Evans. All rights reserved.
//

import UIKit
import AVFoundation

class GameVC: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        navigationController?.navigationBar.backgroundColor = #colorLiteral(red: 0.9919999838, green: 0.9409999847, blue: 0.6819999814, alpha: 1)
        
//        title = "Some Title"
        
//        UIApplication.shared.statusBarStyle = .default
//        navigationController?.navigationBar.shadowImage = UIImage()
//        let image = UIImage()
//        navigationController?.navigationBar.setBackgroundImage(image, for: UIBarMetrics.default)
//        navigationController?.navigationBar.isTranslucent = true
        
        //Line under NavigationBar
//        let barView = UIView(frame: CGRect(x:0, y:(UINavigationController().navigationBar.frame.height + UIApplication.shared.statusBarFrame.height), width:view.frame.width, height:0.6))
//        barView.backgroundColor=UIColor.red // set any colour you want..
//        navigationController?.navigationBar.addSubview(barView)
        
        //Title Colour
//        navigationController?.navigationBar.titleTextAtt
        
//        firstLbl.text = _firstName
//        lastLbl.text = _lastName
//        positionLbl.text = _positionEnter
//        numberLbl.text = _numberEnter
//        
//        let swoosh = Bundle.main.path(forResource: "Swoosh", ofType: "wav")
//        let swooshURL = URL(fileURLWithPath: swoosh!)
//        do {
//            try swooshSound = AVAudioPlayer(contentsOf: swooshURL)
//        } catch let err as NSError {
//            print(err.debugDescription)
//        }
//        
//        let brick = Bundle.main.path(forResource: "Brick", ofType: "wav")
//        let brickURL = URL(fileURLWithPath: brick!)
//        do {
//            try brickSound = AVAudioPlayer(contentsOf: brickURL)
//        } catch let err as NSError {
//            print(err.debugDescription)
//        }
//        
//        let steal = Bundle.main.path(forResource: "Steal", ofType: "wav")
//        let stealURL = URL(fileURLWithPath: steal!)
//        do {
//            try stealSound = AVAudioPlayer(contentsOf: stealURL)
//        } catch let err as NSError {
//            print(err.debugDescription)
//        }
//        
//        let assist = Bundle.main.path(forResource: "Assist", ofType: "wav")
//        let assistURL = URL(fileURLWithPath: assist!)
//        do {
//            try assistSound = AVAudioPlayer(contentsOf: assistURL)
//        } catch let err as NSError {
//            print(err.debugDescription)
//        }
//        
//        let block = Bundle.main.path(forResource: "Block", ofType: "wav")
//        let blockURL = URL(fileURLWithPath: block!)
//        do {
//            try blockSound = AVAudioPlayer(contentsOf: blockURL)
//        } catch let err as NSError {
//            print(err.debugDescription)
//        }
//        
//        let foul = Bundle.main.path(forResource: "Foul", ofType: "wav")
//        let foulURL = URL(fileURLWithPath: foul!)
//        do {
//            try foulSound = AVAudioPlayer(contentsOf: foulURL)
//        } catch let err as NSError {
//            print(err.debugDescription)
//        }
//        
//        let rebound = Bundle.main.path(forResource: "Rebound", ofType: "wav")
//        let reboundURL = URL(fileURLWithPath: rebound!)
//        do {
//            try reboundSound = AVAudioPlayer(contentsOf: reboundURL)
//        } catch let err as NSError {
//            print(err.debugDescription)
//        }
//        
//        let turnOver = Bundle.main.path(forResource: "TurnOver", ofType: "wav")
//        let turnOverURL = URL(fileURLWithPath: turnOver!)
//        do {
//            try turnOverSound = AVAudioPlayer(contentsOf: turnOverURL)
//        } catch let err as NSError {
//            print(err.debugDescription)
//        }
//        
//        let subtract = Bundle.main.path(forResource: "Subtract", ofType: "wav")
//        let subtractURL = URL(fileURLWithPath: subtract!)
//        do {
//            try subtractSound = AVAudioPlayer(contentsOf: subtractURL)
//        } catch let err as NSError {
//            print(err.debugDescription)
//        }
//        
//        let clear = Bundle.main.path(forResource: "Clear", ofType: "wav")
//        let clearURL = URL(fileURLWithPath: clear!)
//        do {
//            try clearSound = AVAudioPlayer(contentsOf: clearURL)
//        } catch let err as NSError {
//            print(err.debugDescription)
//        }
//        
//        let click = Bundle.main.path(forResource: "Click", ofType: "wav")
//        let clickURL = URL(fileURLWithPath: click!)
//        do {
//            try clickSound = AVAudioPlayer(contentsOf: clickURL)
//        } catch let err as NSError {
//            print(err.debugDescription)
//        }
    }
    
    @IBAction func cancelGameButtonPressed(_ sender: Any) {
        let alertController = UIAlertController(title: "⚠ CANCEL GAME", message: "Are you sure you want to cancel your game?", preferredStyle: .alert)
        
        let cancelGameAction = UIAlertAction(title: "✗ Cancel Game", style: .default, handler: {
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
        let alertController = UIAlertController(title: "⚠ END GAME", message: "Is the game over?", preferredStyle: .alert)
        
        let cancelGameAction = UIAlertAction(title: "✓ Save Game", style: .default, handler: {
            alert -> Void in
//            self.dismiss(animated: true, completion: nil)
            self.wonOrLostAlert()
        })
        
        let continueGameAction = UIAlertAction(title: "▹ Continue Game", style: .default, handler: {
            (action : UIAlertAction!) -> Void in
        })
        
        alertController.addAction(cancelGameAction)
        alertController.addAction(continueGameAction)
        
        alertController.view.tintColor = #colorLiteral(red: 0.9530000091, green: 0.6980000138, blue: 0.3289999962, alpha: 1)
        
        self.present(alertController, animated: true, completion: nil)
    }
    
    func wonOrLostAlert() {
        let alertController = UIAlertController(title: "GAME RESULTS", message: "Did you win or loose?", preferredStyle: .alert)
        
        let cancelGameAction = UIAlertAction(title: "✓ Won", style: .default, handler: {
            alert -> Void in
//            self.dismiss(animated: true, completion: nil)
            self.howManyMinutesPlayAlert()
        })
        
        let continueGameAction = UIAlertAction(title: "✗ Lost", style: .default, handler: {
            (action : UIAlertAction!) -> Void in
//            self.dismiss(animated: true, completion: nil)
            self.howManyMinutesPlayAlert()
        })
        
        alertController.addAction(cancelGameAction)
        alertController.addAction(continueGameAction)
        
        alertController.view.tintColor = #colorLiteral(red: 0.9530000091, green: 0.6980000138, blue: 0.3289999962, alpha: 1)
        
        self.present(alertController, animated: true, completion: nil)
    }
    
    func howManyMinutesPlayAlert() {
        let alertController = UIAlertController(title: "MINUTES", message: "Enter the total approximate number of minutes played...", preferredStyle: .alert)
        
        let saveAction = UIAlertAction(title: "✓ Save", style: .default, handler: {
            alert -> Void in
            
            let firstTextField = alertController.textFields![0] as UITextField
            
            print("firstName \(firstTextField.text ?? "")")
            
//            func updateItems() {
//                guard let itemEntered = firstTextField.text else {return}
//
//                if let item = self.item {
//                    ItemsController.sharedController.updateItems(item, item: itemEntered)
//                } else {
//                    ItemsController.sharedController.addItems(itemEntered)
//                }
//            }
            
            self.dismiss(animated: true, completion: nil)
            
//            updateItems()
        })
        
        let cancelAction = UIAlertAction(title: "✗ IDK", style: .default, handler: {
            (action : UIAlertAction!) -> Void in
            self.dismiss(animated: true, completion: nil)
        })
        
        alertController.addTextField { (textField : UITextField!) -> Void in
            textField.keyboardType = .decimalPad
            textField.placeholder = "i.e. 12"
        }
        
        alertController.addAction(saveAction)
        alertController.addAction(cancelAction)
        
        alertController.view.tintColor = #colorLiteral(red: 0.9530000091, green: 0.6980000138, blue: 0.3289999962, alpha: 1)
        
        self.present(alertController, animated: true, completion: nil)
    }
    
    fileprivate var profile: Profile! {
        didSet {
            _firstName = profile.firstName
            _lastName = profile.lastName
            _positionEnter = profile.positionEnter
            _numberEnter = profile.numberEnter
        }
    }
    
    private var _firstName: String!
    
    var firstName: String {
        get {
            return _firstName
        } set {
            _firstName = newValue
        }
    }
    
    private var _lastName: String!
    
    var lastName: String {
        get {
            return _lastName
        } set {
            _lastName = newValue
        }
    }
    
    private var _positionEnter: String!
    
    var positionEnter: String {
        get {
            return _positionEnter
        } set {
            _positionEnter = newValue
        }
    }
    
    private var _numberEnter: String!
    
    var numberEnter: String {
        get {
            return _numberEnter
        } set {
            _numberEnter = newValue
        }
    }
    
    var swooshSound: AVAudioPlayer!
    var brickSound: AVAudioPlayer!
    var stealSound: AVAudioPlayer!
    var assistSound: AVAudioPlayer!
    var blockSound: AVAudioPlayer!
    var foulSound: AVAudioPlayer!
    var reboundSound: AVAudioPlayer!
    var turnOverSound: AVAudioPlayer!
    var subtractSound: AVAudioPlayer!
    var clearSound: AVAudioPlayer!
    var clickSound: AVAudioPlayer!
    
    func set(firstName: String, lastName: String) {
        _firstName = firstName
        _lastName = lastName
        _positionEnter = positionEnter
        _numberEnter = numberEnter
    }
    
    @IBOutlet weak var teamNameLbl: UILabel!
    @IBOutlet weak var subtractLbl: UIButton!
    @IBOutlet weak var firstLbl: UILabel!
    @IBOutlet weak var lastLbl: UILabel!
    @IBOutlet weak var positionLbl: UILabel!
    @IBOutlet weak var numberLbl: UILabel!
    
    @IBOutlet weak var gmPtsLbl: UILabel!
    @IBOutlet weak var gmRebLbl: UILabel!
    @IBOutlet weak var gmAstLbl: UILabel!
    @IBOutlet weak var gmStlLbl: UILabel!
    @IBOutlet weak var gmBlkLbl: UILabel!
    @IBOutlet weak var gmPfLbl: UILabel!
    @IBOutlet weak var gmTovLbl: UILabel!
    @IBOutlet weak var gmEffLbl: UILabel!
    @IBOutlet weak var gmTspLbl: UILabel!
    
    @IBOutlet weak var gmFtmLbl: UILabel!
    @IBOutlet weak var gmFtaLbl: UILabel!
    @IBOutlet weak var gmFtpLbl: UILabel!
    @IBOutlet weak var gmFgmLbl: UILabel!
    @IBOutlet weak var gmFgaLbl: UILabel!
    @IBOutlet weak var gmFgpLbl: UILabel!
    @IBOutlet weak var gm3pmLbl: UILabel!
    @IBOutlet weak var gm3paLbl: UILabel!
    @IBOutlet weak var gm3ppLbl: UILabel!
    
    var subtractIsActive: Bool = false
    
    var first = "Lilly"
    var last = "Evans"
    var position = "PG"
    var number = "11"
    var gmPts = 0
    var gmReb = 0
    var gmAst = 0
    var gmStl = 0
    var gmBlk = 0
    var gmPf = 0
    var gmTov = 0
    var gmEff = 0
    var gmTsp = 0
    
    var gmFtm = 0
    var gmFta = 0
    var gmFtp = 0
    var gmFgm = 0
    var gmFga = 0
    var gmFgp = 0
    var gm3pm = 0
    var gm3pa = 0
    var gm3pp = 0
    
    @IBAction func subBtn(_ sender: UIBarButtonItem) {
        playClick()
        if subtractIsActive == false {
            subOn()
        } else {
            subOff()
        }
    }
    
    
    func subOn() {
        subtractIsActive = true
        subtractLbl.isHidden = false
        subLbl.isHidden = false
    }
    
    func subOff() {
        subtractIsActive = false
        subtractLbl.isHidden = true
        subLbl.isHidden = true
    }
    
    
    func playSubtract() {
//        if subtractSound.isPlaying {
//            subtractSound.stop()
//        }
//        subtractSound.play()
    }
    
    
    
    func formatAsPercentage(numerator: Double, denominator: Double) -> Int {
        if denominator != 0 {
            return Int(round(100.0 * (numerator / denominator)))
        } else {
            return 0
        }
    }
    
    func effRating() -> Int {
        if (gmPts + gmReb + gmAst + gmStl + gmBlk - (gmFga - gmFgm) - (gmFta - gmFtm) - gmTov) >= 0 {
            return (gmPts + gmReb + gmAst + gmStl + gmBlk - (gmFga - gmFgm) - (gmFta - gmFtm) - gmTov)
        } else {
            return 0
        }
    }
    
    func trueShootPercentage() -> Int {
        guard gmFga != 0 && gmFta != 0 else {
            return 0
        }
        if Int(round(100.0 * (Double(gmPts) / (2 * Double(gmFga) + (0.44 * Double(gmFta)))))) >= 100 {
            return 100
        } else if Int(round(100.0 * (Double(gmPts) / (2 * Double(gmFga) + (0.44 * Double(gmFta)))))) <= 0 {
            return 0
        } else {
            return Int(round(100.0 * (Double(gmPts) / (2 * Double(gmFga) + (0.44 * Double(gmFta))))))
        }
    }
    
    func refreshLabels() {
        gmFtp = formatAsPercentage(numerator: Double(gmFtm), denominator: Double(gmFta))
        gmFgp = formatAsPercentage(numerator: Double(gmFgm), denominator: Double(gmFga))
        gm3pp = formatAsPercentage(numerator: Double(gm3pm), denominator: Double(gm3pa))
        gmTsp = trueShootPercentage()
        gmEff = effRating()
        gmFtpLbl.text = "\(gmFtp)%"
        gmFgpLbl.text = "\(gmFgp)%"
        gm3ppLbl.text = "\(gm3pp)%"
        gmTspLbl.text = "\(gmTsp)%"
        gmEffLbl.text = "\(gmEff)"
        gmPtsLbl.text = "\(gmPts)"
        gmRebLbl.text = "\(gmReb)"
        gmAstLbl.text = "\(gmAst)"
        gmStlLbl.text = "\(gmStl)"
        gmBlkLbl.text = "\(gmBlk)"
        gmPfLbl.text = "\(gmPf)"
        gmTovLbl.text = "\(gmTov)"
        gmEffLbl.text = "\(gmEff)"
        gmTspLbl.text = "\(gmTsp)"
        gmFtmLbl.text = "\(gmFtm)"
        gmFtaLbl.text = "\(gmFta)"
        gmFtpLbl.text = "\(gmFtp)"
        gmFgmLbl.text = "\(gmFgm)"
        gmFgaLbl.text = "\(gmFga)"
        gmFgpLbl.text = "\(gmFgp)"
        gm3pmLbl.text = "\(gm3pm)"
        gm3paLbl.text = "\(gm3pa)"
        gm3ppLbl.text = "\(gm3pp)"
        subOff()
    }
    
    func playClear() {
//        if clearSound.isPlaying {
//            clearSound.stop()
//        }
//        clearSound.play()
    }
    
    func playSwoosh() {
//        if swooshSound.isPlaying {
//            swooshSound.stop()
//        }
//        swooshSound.play()
    }
    
    func playBrick() {
//        if brickSound.isPlaying {
//            brickSound.stop()
//        }
//        brickSound.play()
    }
    
    func playSteal() {
//        if stealSound.isPlaying {
//            stealSound.stop()
//        }
//        stealSound.play()
    }
    
    func playAssist() {
//        if assistSound.isPlaying {
//            assistSound.stop()
//        }
//        assistSound.play()
    }
    
    func playBlock() {
//        if blockSound.isPlaying {
//            blockSound.stop()
//        }
//        blockSound.play()
    }
    
    func playFoul() {
//        if foulSound.isPlaying {
//            foulSound.stop()
//        }
//        foulSound.play()
    }
    
    func playRebound() {
//        if reboundSound.isPlaying {
//            reboundSound.stop()
//        }
//        reboundSound.play()
    }
    
    func playTurnOver() {
//        if turnOverSound.isPlaying {
//            turnOverSound.stop()
//        }
//        turnOverSound.play()
    }
    
    func playClick() {
//        if clickSound.isPlaying {
//            clickSound.stop()
//        }
//        clickSound.play()
    }
    
    @IBAction func ftmBtn(_ sender: Any) {
        if subtractIsActive {
            playSubtract()
            gmPts -= 1
            gmFta -= 1
            gmFtm -= 1
            refreshLabels()
        } else {
            playSwoosh()
            gmPts += 1
            gmFta += 1
            gmFtm += 1
            refreshLabels()
        }
    }
    
    @IBAction func ftmissBtn(_ sender: Any) {
        if subtractIsActive {
            playSubtract()
            gmFta -= 1
            refreshLabels()
        } else {
            playBrick()
            gmFta += 1
            refreshLabels()
        }
    }
    
    @IBAction func fgmBtn(_ sender: Any) {
        if subtractIsActive {
            playSubtract()
            gmPts -= 2
            gmFga -= 1
            gmFgm -= 1
            refreshLabels()
        } else {
            playSwoosh()
            gmPts += 2
            gmFga += 1
            gmFgm += 1
            refreshLabels()
        }
    }
    
    @IBAction func fgMissBtn(_ sender: Any) {
        if subtractIsActive {
            playSubtract()
            gmFga -= 1
            refreshLabels()
        } else {
            playBrick()
            gmFga += 1
            refreshLabels()
        }
    }
    
    @IBAction func threePmBtn(_ sender: Any) {
        if subtractIsActive {
            playSubtract()
            gmPts -= 3
            gm3pa -= 1
            gm3pm -= 1
            gmFga -= 1
            gmFgm -= 1
            refreshLabels()
        } else {
            playSwoosh()
            gmPts += 3
            gm3pa += 1
            gm3pm += 1
            gmFga += 1
            gmFgm += 1
            refreshLabels()
        }
    }
    
    @IBAction func threePmissBtn(_ sender: Any) {
        if subtractIsActive {
            playSubtract()
            gm3pa -= 1
            gmFga -= 1
            refreshLabels()
        } else {
            playBrick()
            gm3pa += 1
            gmFga += 1
            refreshLabels()
        }
    }
    
    @IBAction func rebBtn(_ sender: Any) {
        if subtractIsActive {
            playSubtract()
            gmReb -= 1
            refreshLabels()
        } else {
            playRebound()
            gmReb += 1
            refreshLabels()
        }
    }
    
    @IBAction func astBtn(_ sender: Any) {
        if subtractIsActive {
            playSubtract()
            gmAst -= 1
            refreshLabels()
        } else {
            playAssist()
            gmAst += 1
            refreshLabels()
        }
    }
    
    @IBAction func stlBtn(_ sender: Any) {
        if subtractIsActive {
            playSubtract()
            gmStl -= 1
            refreshLabels()
        } else {
            playSteal()
            gmStl += 1
            refreshLabels()
        }
    }
    
    @IBAction func blkBtn(_ sender: Any) {
        if subtractIsActive {
            playSubtract()
            gmBlk -= 1
            refreshLabels()
        } else {
            playBlock()
            gmBlk += 1
            refreshLabels()
        }
    }
    
    @IBAction func pfBtn(_ sender: Any) {
        if subtractIsActive {
            playSubtract()
            gmPf -= 1
            refreshLabels()
        } else {
            playFoul()
            gmPf += 1
            refreshLabels()
        }
    }
    
    @IBAction func tovBtn(_ sender: Any) {
        if subtractIsActive {
            playSubtract()
            gmTov -= 1
            refreshLabels()
        } else {
            playTurnOver()
            gmTov += 1
            refreshLabels()
        }
    }
    
    @IBOutlet weak var subLbl: UILabel!
    
    func resetGame() {
        gmPts = 0
        gmReb = 0
        gmAst = 0
        gmStl = 0
        gmBlk = 0
        gmPf = 0
        gmTov = 0
        gmEff = 0
        gmTsp = 0
        gmFtm = 0
        gmFta = 0
        gmFtp = 0
        gmFgm = 0
        gmFga = 0
        gmFgp = 0
        gm3pm = 0
        gm3pa = 0
        gm3pp = 0
        refreshLabels()
    }
    
    @IBAction func switchPlayerBtn(_ sender: Any) {
//        playClick()
        let alertController = UIAlertController(title: "SWITCH PLAYER", message: "Select a player...", preferredStyle: .alert)
        
        let continueGameAction = UIAlertAction(title: "OK", style: .default, handler: {
            (action : UIAlertAction!) -> Void in
        })
        
        alertController.addAction(continueGameAction)
        
        alertController.view.tintColor = #colorLiteral(red: 0.9530000091, green: 0.6980000138, blue: 0.3289999962, alpha: 1)
        
        self.present(alertController, animated: true, completion: nil)
    }
    
    @IBAction func trashBtn(_ sender: Any) {
        let alertController = UIAlertController(title: "⚠ CLEAR ALL", message: "Are you sure you want to clear all stats and start over?", preferredStyle: .alert)
        
        let cancelGameAction = UIAlertAction(title: "✗ Clear Stats", style: .default, handler: {
            alert -> Void in
            self.resetGame()
        })
        
        let continueGameAction = UIAlertAction(title: "▹ Continue Game", style: .default, handler: {
            (action : UIAlertAction!) -> Void in
        })
        
        alertController.addAction(cancelGameAction)
        alertController.addAction(continueGameAction)
        
        alertController.view.tintColor = #colorLiteral(red: 0.9530000091, green: 0.6980000138, blue: 0.3289999962, alpha: 1)
        
        self.present(alertController, animated: true, completion: nil)
    }
    
    @IBAction func shareBtn(_ sender: Any) {
//        playClick()
        let string: String = "Game stats for\n\(first) \(last) \(position) #\(number) \n\nPoints: \(gmPts)\nRebounds: \(gmReb)\nAssists: \(gmAst)\nSteals: \(gmStl)\nBlocks: \(gmBlk)\nFouls: \(gmPf)\nTurnovers: \(gmTov)\nFree Throws: \(gmFtm)/\(gmFta)= \(gmFtp)%\nField Goals: \(gmFgm)/\(gmFga)= \(gmFgp)%\nThree Points: \(gm3pm)/\(gm3pa)= \(gm3pp)%\nTrue Shot: \(gmTsp)%\nEfficiency: \(gmEff)\n\nfrom Basketball Simple Stats"
        
        let activityViewController = UIActivityViewController(activityItems: [string], applicationActivities: nil)
        present(activityViewController, animated: true, completion: nil)
    }
    
}

// MARK: Creation
extension GameVC {
    fileprivate static let storyboardName = "Main"
    fileprivate static let viewControllerName = "GameVC"
    class func create(profile: Profile) -> GameVC {
        let storyboard = UIStoryboard(name: storyboardName, bundle: Bundle(for: GameVC.classForCoder()))
        guard let controller = storyboard.instantiateViewController(withIdentifier: viewControllerName) as? GameVC else {
            fatalError("\(storyboardName) Storyboard needs a view controller named \(viewControllerName) of type GameVC")
        }
        
        controller.profile = profile
        
        return controller
    }
}

class Profile {
    var firstName: String = ""
    var lastName: String = ""
    var positionEnter: String = ""
    var numberEnter: String = ""
    
    init(firstName first: String, lastName last: String, positionEnter position: String, numberEnter number: String) {
        self.firstName = first
        self.lastName = last
        self.positionEnter = position
        self.numberEnter = number
    }
}
