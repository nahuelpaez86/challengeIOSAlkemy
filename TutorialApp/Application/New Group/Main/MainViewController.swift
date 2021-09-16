//
//  MainViewController.swift
//  TutorialApp
//
//  Created by Nahuel Paez on 16/09/2021.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var loginInput: UITextField!
    
 override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        


    }

    @IBAction func loginButton(_ sender: Any) {
        if loginInput.hasText{
            let vc = tableViewController(nibName: "tableViewController", bundle: nil)
            self.present(vc, animated:true)
        }else{
            emailFail()
        }
    }
    func emailFail(){
        let alert = UIAlertController(title: "Alerta", message: "Campo obligatorio", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "ok", style: .default, handler: nil))
        self.present(alert, animated: true)
    }

    

}
