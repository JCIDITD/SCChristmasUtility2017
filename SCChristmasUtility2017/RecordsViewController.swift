//
//  RecordsViewController.swift
//  SCChristmasUtility2017
//
//  Created by Tengoku no Spoa on 2017/12/15.
//  Copyright © 2017年 Tengoku no Spoa. All rights reserved.
//

import UIKit

class RecordsViewController: UIViewController {
    
    // Define variables
    var basketA:[BasketChoice]=[]
    var basketB:[BasketChoice]=[]
    var lottery:[(name:String ,homeRoom:String, number:String)]=[]
    
    @IBOutlet weak var recordsTextField: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // load memory from User Defaults
        if let basketAMemory = UserDefaults.standard.object(forKey: "basketA"){
            basketA = basketAMemory as! [BasketChoice]
        }
        if let basketBMemory = UserDefaults.standard.object(forKey: "basketB"){
            basketB = basketBMemory as! [BasketChoice]
        }
        if let lotteryMemory = UserDefaults.standard.object(forKey: "lottery"){
            lottery = lotteryMemory as! [(name:String ,homeRoom:String, number:String)]
        }
        
        // generate Display Text
        recordsTextField.text = generateDisplayText()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func backButtonPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "backToHome", sender: self)
    }
    
    func generateDisplayText()->String{
        
        var outputString = ""
        
        if !basketA.isEmpty {
            outputString += "Contents in Basket A:\n"
            for basket in basketA {
                outputString += "\(basket.homeRoom), \(basket.name): \(basket.weight)\n"
            }
            outputString += "\n"
        }

        if !basketB.isEmpty {
            outputString += "Contents in Basket B:\n"
            for basket in basketB {
                outputString += "\(basket.homeRoom), \(basket.name): \(basket.weight)\n"
            }
            outputString += "\n"
        }
        
        if !lottery.isEmpty {
            outputString += "Contents in Lottery:\n"
            for choice in lottery {
                outputString += "\(choice.homeRoom), \(choice.name): \(choice.number)\n"
            }
        }
        
        return outputString
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
