//
//  ExampleViewController.swift
//  TutorialApp
//
//  Created by Nahuel Paez on 06/09/2021.
//

import UIKit

// la clase ExampleViewController herea de UiViewController
class ExampleViewController: UIViewController {

    
    @IBOutlet weak var textField: UITextField!
    
    // override sobreEscribe el metodo viewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        textField.text = "Hola"

        
    }


    @IBAction func btn(_ sender: Any) {
        print("Holis")
    }
    

}
