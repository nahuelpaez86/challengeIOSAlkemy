//
//  TabBarViewController.swift
//  TutorialApp
//
//  Created by Nahuel Paez on 22/09/2021.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let firstName = "Movies"
        let secondName = "Favorites"
        let firstTabImage = UIImage(systemName: "list.dash")
        let secondTabImage = UIImage(systemName: "suit.heart.fill")
        
    
       let firstTab = tableViewController(nibName: "tableViewController", bundle: nil)
        firstTab.title = firstName
        
       let secondTab = FavoritesViewController(nibName: "FavoritesViewController", bundle: nil)
        secondTab.title = secondName
        
        
        
       let firstNavigationViewController = UINavigationController(rootViewController: firstTab)
         firstNavigationViewController.tabBarItem = UITabBarItem(title: firstName, image: firstTabImage ,selectedImage: firstTabImage)
        
        let secondNavigationViewController = UINavigationController(rootViewController: secondTab)
            secondNavigationViewController.tabBarItem = UITabBarItem(title: secondName, image: secondTabImage ,selectedImage: secondTabImage)
        
   viewControllers = [firstNavigationViewController,secondNavigationViewController]
        
}
    

    

}
