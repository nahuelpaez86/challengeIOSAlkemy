//
//  MainViewController.swift
//  TutorialApp
//
//  Created by Alejandro Exequiel Taborda on 03/01/2021.
//

import UIKit
//final significa que es privada , no puede heredar nadie de esta clase
class MainViewController: BaseViewController {

    
    
    @IBOutlet weak var textfieldValue: UITextField!
    
    
override func viewDidLoad() {
        super.viewDidLoad()
    
      
        
    }
     // action boton
//    @IBAction func loginAction(_ sender: Any) {
//      // si el textField tiene texto es true
//      if textfieldValue.hasText {
//           //let vc = QuestionViewController(nibName: "QuestionViewController", bundle: nil)
//            //self.present(vc,animated : true)
//          presentTabBarController() // ejecuta el metodo de navigation
//         
//        }else {
//           presentNoUsernameAlert() // metodo err
//        }
//    }
//   
   // metodo error
//   private func presentNoUsernameAlert () {
//      let alert = UIAlertController(title : "Alerta", message:" Por favor ingrese un nombre de usuario",preferredStyle: .alert) // config el error
//      alert.addAction(UIAlertAction(title:" OK" , style: .default, handler:  nil)) // estilo del modal
//      self.present(alert, animated: true, completion: nil) // presenta
//   }
//   // metodo logueado
//   private func presentTabBarController(  ){
//
//      let tabBarController = TabBarViewController() // traigo el tabBar
//      tabBarController.modalPresentationStyle = .overFullScreen // config de que manera se abre
//      self.present(tabBarController, animated: true) //  presento la vista
//
      
     //let categoriesViewController = CategoryViewController(nibName: "CategoryViewController", bundle: nil ) // vista donde me lleva
     //let navigationController = UINavigationController(rootViewController: categoriesViewController) // accion de llevarme a la ruta
     // navigationController.modalPresentationStyle = .overFullScreen // config del evento de navegar
      //self.present(navigationController, animated: true) // presenta esa accion
   }
    
}
