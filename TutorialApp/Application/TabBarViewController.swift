//
//  TabBarViewController.swift
//  TutorialApp
//
//  Created by Nahuel Paez on 12/09/2021.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // constantes
           let firstTabTittle = "Categories"
           let secondTabTittle = "Ramdom"
           
           let firstTabImage = UIImage(systemName: "list.dash")
           let secondTabImage = UIImage(systemName: "shuffle")
    
        // llamo a las vistas que conforman el tabBar
           let firstTab = CategoryViewController(nibName: "CategoryViewController", bundle: nil)
           firstTab.title = firstTabTittle
           let secondTab = QuestionViewController(nibName: "QuestionViewController", bundle: nil)
           secondTab.title = secondTabTittle
        
        // envuelvo las vistas en un NavigationController
           let firstNavigationViewController = UINavigationController(rootViewController: firstTab)
           firstNavigationViewController.tabBarItem = UITabBarItem(title: firstTabTittle, image: firstTabImage, selectedImage: nil) // estilo del btn de tabbar
        
           let secondNavigationViewController = UINavigationController(rootViewController: secondTab)
           secondNavigationViewController.tabBarItem = UITabBarItem(title: secondTabTittle, image: secondTabImage, selectedImage:nil )
        
        // instancio el viewControllers con las navigations
           viewControllers = [firstNavigationViewController,secondNavigationViewController]
        
    
        
    }
    

   

}
