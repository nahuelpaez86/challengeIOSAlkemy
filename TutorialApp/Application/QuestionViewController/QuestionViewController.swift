//
//  QuestionViewController.swift
//  TutorialApp
//
//  Created by Nahuel Paez on 12/09/2021.
//

import UIKit

class QuestionViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }


    @IBAction func skip(_ sender: Any) {
        let vc = MainViewController()
         self.present(vc,animated : true)
        
    }
    
    @IBAction func yesBtn(_ sender: Any) {
    }
    

    @IBAction func noBtn(_ sender: Any) {
    }
}
