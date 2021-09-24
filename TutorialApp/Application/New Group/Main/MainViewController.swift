//
//  MainViewController.swift
//  TutorialApp
//
//  Created by Nahuel Paez on 16/09/2021.
//

import UIKit

class MainViewController: UIViewController {

    
    //MARK:- atributtes
    private var viewModel: MainViewModel!
    // MARK:- ui conection
@IBOutlet weak var loginInput: UITextField!
    
 override func viewDidLoad() {
        super.viewDidLoad()
      viewModel = MainViewModel()
    
    
    }
// MARK:- actions and func
    
    @IBAction func loginButton(_ sender: Any) {
        let input = loginInput.text!
        if loginInput.hasText{
            let validate = viewModel.validateEmail(Email: input )
            print(validate)
         if validate {
            presentTabBarController()
         }else{
            emailFail("Invalid mail")
         }
         }else{
            emailFail("Mail obligatorio")
            print("no funciona")
         }
        
    }
    
    func login(){
        let vc = tableViewController(nibName: "tableViewController", bundle: nil)
        self.present(vc, animated:true)
    }

    func emailFail(_ message : String){
      let alert = UIAlertController(title: "Alert", message: message, preferredStyle: .alert)
      alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
      self.present(alert, animated: true)
  }
    
    private func presentTabBarController(){
        let tabBarController = TabBarViewController()
        tabBarController.modalPresentationStyle = .overFullScreen
        self.present(tabBarController, animated: true)
    }

}
