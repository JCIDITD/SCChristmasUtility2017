//
//  ViewController.swift
//  SCChristmasUtility2017
//
//  Created by Tengoku no Spoa on 2017/12/15.
//  Copyright © 2017年 Tengoku no Spoa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var valueField: UITextField!
    @IBOutlet weak var basketNumberField: UITextField!
    @IBOutlet weak var homeRoomField: UITextField!
    @IBOutlet weak var nameField: UITextField!
    
    typealias Lottery = (name:String ,homeRoom:String, number:Int)
    
    var basketA:[BasketChoice]=[]
    var basketB:[BasketChoice]=[]
    var lottery:[Lottery] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Load memory
        if let basketAMemory = UserDefaults.standard.object(forKey: "basketA"){
            basketA = basketAMemory as! [BasketChoice]
        }
        if let basketBMemory = UserDefaults.standard.object(forKey: "basketB"){
            basketB = basketBMemory as! [BasketChoice]
        }
        if let lotteryMemory = UserDefaults.standard.object(forKey: "lottery"){
            lottery = lotteryMemory as! [Lottery]
            print("LOTTERY MEM LOADED")
        }
        
    }

    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func recordLotteryButtonDidPressed(_ sender: UIButton) {
        guard valueField.text != "" else {
            return
        }
        guard nameField.text != "" else {
            return
        }
        guard homeRoomField.text != "" else {
            return
        }
         let saved:Lottery = (name: nameField.text!, homeRoom: homeRoomField.text!, number: Int(valueField.text!)!)
        lottery += [saved]
        print(lottery)
 
        UserDefaults.standard.set(lottery, forKey: "lottery")
    }
    
    func serializeLottery(choice: Lottery)->[String: Int]{
        return ["\(choice.homeRoom),\(choice.name)": choice.number]
    }

    func deserializeLottery(dictionary:[String:Int])->Lottery{
        return Lottery(
            String(dictionary.first!.key.split(separator: ",").first!),
            String(dictionary.first!.key.split(separator: ",").last!),
            dictionary.first!.value
        )
    }
    
    
    @IBAction func recordBasketButtonDidPressed(_ sender: UIButton) {
        
        
        guard valueField.text != "" else {
            return
        }
        guard nameField.text != "" else {
            return
        }
        guard homeRoomField.text != "" else {
            return
        }
        guard basketNumberField.text != "" else {
            return
        }
        
        switch basketNumberField.text! {
        case "1":
            basketA.append(BasketChoice(basketNum: 1, name: nameField.text!, homeRoom: homeRoomField.text!, weight: Double(valueField.text!)!))
            UserDefaults.standard.set(basketA, forKey: "basketA")
        case "2":
            basketB.append(BasketChoice(basketNum: 2, name: nameField.text!, homeRoom: homeRoomField.text!, weight: Double(valueField.text!)!))
            UserDefaults.standard.set(basketB, forKey: "basketB")
        default:
            return
        }
        
        
    }
    
    @IBAction func toRecordsButtonDidPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "toRecords", sender: self)
    }
    
    @IBAction func resetButtonDidPressed(_ sender: UIButton) {
        nameField.text = ""
        valueField.text = ""
        basketNumberField.text = ""
        valueField.text = ""
    }
    @IBAction func checkResultButtonDidPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "toCheckResults", sender: self)
    }
}

