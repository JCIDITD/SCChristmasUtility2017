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
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func recordLotteryButtonDidPressed(_ sender: UIButton) {
        //TODO: implement Lottery record Solution
    }
    
    @IBAction func recordBasketButtonDidPressed(_ sender: UIButton) {
        //TODO: implement Basket record Solution
    }
    @IBAction func toRecordsButtonDidPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "toRecords", sender: self)
    }
}

