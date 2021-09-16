//
//  File.swift
//  TutorialApp
//
//  Created by Nahuel Paez on 11/09/2021.
//

import UIKit

extension UIButton{
    // borde redondo
    func round(){
        layer.cornerRadius = bounds.height / 2
        clipsToBounds = true
    }
    
    // brilla
    
    func shine(){
        UIView.animate(withDuration: 0.1, animations:{
            self.alpha = 0.5
        }) {
            (completion) in
            UIView.animate(withDuration : 0.1 , animations: {
                self.alpha = 1
            })
        }
    }
    
}
