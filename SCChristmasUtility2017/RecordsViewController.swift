//
//  RecordsViewController.swift
//  SCChristmasUtility2017
//
//  Created by Tengoku no Spoa on 2017/12/15.
//  Copyright © 2017年 Tengoku no Spoa. All rights reserved.
//

import UIKit

class RecordsViewController: UIViewController {

    @IBOutlet weak var recordsTextField: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func backButtonPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "backToHome", sender: self)
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
