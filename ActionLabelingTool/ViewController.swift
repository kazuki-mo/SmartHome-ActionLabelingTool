//
//  ViewController.swift
//  ActionLabelingTool
//
//  Created by 守谷 一希 on 2016/03/09.
//  Copyright © 2016年 守谷 一希. All rights reserved.
//

import UIKit
import AudioToolbox

class ViewController: UIViewController {
    
    let dbModel = DBModel()
    var objects = NSMutableArray()

    @IBAction func BT_Ryouri(sender: AnyObject) {
        let now = NSDate()
        let dateFormatter = NSDateFormatter()
        dateFormatter.locale = NSLocale(localeIdentifier: "ja_JP")
        dateFormatter.timeStyle = .MediumStyle
        dateFormatter.dateStyle = .MediumStyle
        
        let data = DataModel(date: dateFormatter.stringFromDate(now), action: "Cooking")
        dbModel.add(data)
        showDB()
        
        AudioServicesPlaySystemSoundWithoutVibration("Tink.caf")
    }
    
    @IBAction func BT_Shokuji(sender: AnyObject) {
        let now = NSDate()
        let dateFormatter = NSDateFormatter()
        dateFormatter.locale = NSLocale(localeIdentifier: "ja_JP")
        dateFormatter.timeStyle = .MediumStyle
        dateFormatter.dateStyle = .MediumStyle
        
        let data = DataModel(date: dateFormatter.stringFromDate(now), action: "Meal")
        dbModel.add(data)
        showDB()
        
        AudioServicesPlaySystemSoundWithoutVibration("Tink.caf")
    }
    
    @IBAction func BT_Souji(sender: AnyObject) {
        let now = NSDate()
        let dateFormatter = NSDateFormatter()
        dateFormatter.locale = NSLocale(localeIdentifier: "ja_JP")
        dateFormatter.timeStyle = .MediumStyle
        dateFormatter.dateStyle = .MediumStyle
        
        let data = DataModel(date: dateFormatter.stringFromDate(now), action: "Cleaning")
        dbModel.add(data)
        showDB()
        
        AudioServicesPlaySystemSoundWithoutVibration("Tink.caf")
    }
    
    @IBAction func BT_Nyuyoku(sender: AnyObject) {
        let now = NSDate()
        let dateFormatter = NSDateFormatter()
        dateFormatter.locale = NSLocale(localeIdentifier: "ja_JP")
        dateFormatter.timeStyle = .MediumStyle
        dateFormatter.dateStyle = .MediumStyle
        
        let data = DataModel(date: dateFormatter.stringFromDate(now), action: "Bath")
        dbModel.add(data)
        showDB()
        
        AudioServicesPlaySystemSoundWithoutVibration("Tink.caf")
    }
    
    @IBAction func BT_Senmen(sender: AnyObject) {
        let now = NSDate()
        let dateFormatter = NSDateFormatter()
        dateFormatter.locale = NSLocale(localeIdentifier: "ja_JP")
        dateFormatter.timeStyle = .MediumStyle
        dateFormatter.dateStyle = .MediumStyle
        
        let data = DataModel(date: dateFormatter.stringFromDate(now), action: "WashFace")
        dbModel.add(data)
        showDB()
        
        AudioServicesPlaySystemSoundWithoutVibration("Tink.caf")
    }
    
    @IBAction func BT_Shokiarai(sender: AnyObject) {
        let now = NSDate()
        let dateFormatter = NSDateFormatter()
        dateFormatter.locale = NSLocale(localeIdentifier: "ja_JP")
        dateFormatter.timeStyle = .MediumStyle
        dateFormatter.dateStyle = .MediumStyle
        
        let data = DataModel(date: dateFormatter.stringFromDate(now), action: "WashDishes")
        dbModel.add(data)
        showDB()
        
        AudioServicesPlaySystemSoundWithoutVibration("Tink.caf")
    }
    
    @IBAction func BT_Suimin(sender: AnyObject) {
        let now = NSDate()
        let dateFormatter = NSDateFormatter()
        dateFormatter.locale = NSLocale(localeIdentifier: "ja_JP")
        dateFormatter.timeStyle = .MediumStyle
        dateFormatter.dateStyle = .MediumStyle
        
        let data = DataModel(date: dateFormatter.stringFromDate(now), action: "Sleeping")
        dbModel.add(data)
        showDB()
        
        AudioServicesPlaySystemSoundWithoutVibration("Tink.caf")
    }
    
    @IBAction func BT_Dokusho(sender: AnyObject) {
        let now = NSDate()
        let dateFormatter = NSDateFormatter()
        dateFormatter.locale = NSLocale(localeIdentifier: "ja_JP")
        dateFormatter.timeStyle = .MediumStyle
        dateFormatter.dateStyle = .MediumStyle
        
        let data = DataModel(date: dateFormatter.stringFromDate(now), action: "Reading")
        dbModel.add(data)
        showDB()
        
        AudioServicesPlaySystemSoundWithoutVibration("Tink.caf")
    }
    
    @IBAction func BT_TV(sender: AnyObject) {
        let now = NSDate()
        let dateFormatter = NSDateFormatter()
        dateFormatter.locale = NSLocale(localeIdentifier: "ja_JP")
        dateFormatter.timeStyle = .MediumStyle
        dateFormatter.dateStyle = .MediumStyle
        
        let data = DataModel(date: dateFormatter.stringFromDate(now), action: "WatchingTV")
        dbModel.add(data)
        showDB()
        
        AudioServicesPlaySystemSoundWithoutVibration("Tink.caf")
    }
    
    @IBAction func BT_Furosouji(sender: AnyObject) {
        let now = NSDate()
        let dateFormatter = NSDateFormatter()
        dateFormatter.locale = NSLocale(localeIdentifier: "ja_JP")
        dateFormatter.timeStyle = .MediumStyle
        dateFormatter.dateStyle = .MediumStyle
        
        let data = DataModel(date: dateFormatter.stringFromDate(now), action: "CleaningBath")
        dbModel.add(data)
        showDB()
        
        AudioServicesPlaySystemSoundWithoutVibration("Tink.caf")
    }
    
    @IBAction func BT_PC(sender: AnyObject) {
        let now = NSDate()
        let dateFormatter = NSDateFormatter()
        dateFormatter.locale = NSLocale(localeIdentifier: "ja_JP")
        dateFormatter.timeStyle = .MediumStyle
        dateFormatter.dateStyle = .MediumStyle
        
        let data = DataModel(date: dateFormatter.stringFromDate(now), action: "PC")
        dbModel.add(data)
        showDB()
        
        AudioServicesPlaySystemSoundWithoutVibration("Tink.caf")
    }
    
    @IBAction func BT_Sentaku(sender: AnyObject) {
        let now = NSDate()
        let dateFormatter = NSDateFormatter()
        dateFormatter.locale = NSLocale(localeIdentifier: "ja_JP")
        dateFormatter.timeStyle = .MediumStyle
        dateFormatter.dateStyle = .MediumStyle
        
        let data = DataModel(date: dateFormatter.stringFromDate(now), action: "Laundry")
        dbModel.add(data)
        showDB()
        
        AudioServicesPlaySystemSoundWithoutVibration("Tink.caf")
    }
    
    @IBAction func BT_Game(sender: AnyObject) {
        let now = NSDate()
        let dateFormatter = NSDateFormatter()
        dateFormatter.locale = NSLocale(localeIdentifier: "ja_JP")
        dateFormatter.timeStyle = .MediumStyle
        dateFormatter.dateStyle = .MediumStyle
        
        let data = DataModel(date: dateFormatter.stringFromDate(now), action: "Game")
        dbModel.add(data)
        showDB()
        
        AudioServicesPlaySystemSoundWithoutVibration("Tink.caf")
    }
    
    @IBAction func BT_Sumaho(sender: AnyObject) {
        let now = NSDate()
        let dateFormatter = NSDateFormatter()
        dateFormatter.locale = NSLocale(localeIdentifier: "ja_JP")
        dateFormatter.timeStyle = .MediumStyle
        dateFormatter.dateStyle = .MediumStyle
        
        let data = DataModel(date: dateFormatter.stringFromDate(now), action: "Smartphone")
        dbModel.add(data)
        showDB()
        
        AudioServicesPlaySystemSoundWithoutVibration("Tink.caf")
    }
    
    @IBAction func BT_Gaishutu(sender: AnyObject) {
        let now = NSDate()
        let dateFormatter = NSDateFormatter()
        dateFormatter.locale = NSLocale(localeIdentifier: "ja_JP")
        dateFormatter.timeStyle = .MediumStyle
        dateFormatter.dateStyle = .MediumStyle
        
        let data = DataModel(date: dateFormatter.stringFromDate(now), action: "GoOut")
        dbModel.add(data)
        showDB()
        
        AudioServicesPlaySystemSoundWithoutVibration("Tink.caf")
    }
    
    @IBAction func BT_Cancel(sender: AnyObject) {
        
        dbModel.delete()
        AudioServicesPlaySystemSoundWithoutVibration("Tock.caf")
        showDB()
    }
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func showDB(){
        print("")
        objects = dbModel.getAll()
        for object in objects{
            let id = object["ID"] as! Int
            let date = object["date"] as! String
            let action = object["action"] as! String
            
            print("ID:\(id), date:\(date), action:\(action)")
        }
    }

    func AudioServicesPlaySystemSoundWithoutVibration(soundName :String) {
        
        var soundIdRing:SystemSoundID = 0       //SoundIDを格納する変数を作成
        let soundUrl = NSURL(fileURLWithPath: "/System/Library/Audio/UISounds/\(soundName)")    //システムサウンドのパスを指定
        AudioServicesCreateSystemSoundID(soundUrl, &soundIdRing)    //再生に使用するSoundIDを作成
        AudioServicesPlaySystemSound(soundIdRing)   //音を再生する
        
    }

}

