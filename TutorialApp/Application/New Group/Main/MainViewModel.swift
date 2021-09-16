//
//  MainViewModel.swift
//  TutorialApp
//
//  Created by Nahuel Paez on 16/09/2021.
//

import Foundation


class MainViewModel {
    
    
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
