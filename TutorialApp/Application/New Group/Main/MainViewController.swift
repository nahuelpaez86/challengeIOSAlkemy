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

    
    }
// MARK:- actions and func
    
    @IBAction func loginButton(_ sender: Any) {
        
       if loginInput.hasText{
        let input = loginInput.text!
         let validate = validateEmail(Email: input)
        if validate {
            login()
        }else{
            emailFail("Invalid mail")
        }
        }else{
            emailFail("Enter your email")
        }
    }
    
   func validateEmail(Email:String) -> Bool {
       let emailFormat = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailPredicate = NSPredicate(format:"SELF MATCHES %@", emailFormat)
        return emailPredicate.evaluate(with: Email)

    }
   func login() {
       let vc = tableViewController(nibName: "tableViewController", bundle: nil)
      self.present(vc, animated:true)
   }
     func emailFail(_ message : String){
       let alert = UIAlertController(title: "Alert", message: message, preferredStyle: .alert)
       alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
       self.present(alert, animated: true)
   }

    

}
