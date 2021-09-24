//
//  mainViewModel.swift
//  TutorialApp
//
//  Created by Nahuel Paez on 18/09/2021.
//

import UIKit


class MainViewModel: UIViewController {
func validateEmail(Email:String) -> Bool {
        let emailFormat = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
         let emailPredicate = NSPredicate(format:"SELF MATCHES %@", emailFormat)
         return emailPredicate.evaluate(with: Email)
}
}

