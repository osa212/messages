//
//  MainTabBarController.swift
//  messages
//
//  Created by osa on 26.09.2021.
//

import UIKit

class MainTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let listVC = ListViewController()
        let peopleVC = PeopleViewController()
        
        let boldConfig = UIImage.SymbolConfiguration(weight: .medium)
        tabBar.tintColor = UIColor(red: 142/255, green: 90/255, blue: 247/255, alpha: 1)
        let peopleImage = UIImage(systemName: "person.2",
                                  withConfiguration: boldConfig)!
        let convImage = UIImage(systemName: "bubble.left.and.bubble.right",
                                withConfiguration: boldConfig)!
        
        viewControllers = [
            generateNavController(rootVC: listVC, title: "Conversations", image: convImage),
            generateNavController(rootVC: peopleVC, title: "People", image: peopleImage)
        ]
    }
    
    private func generateNavController(rootVC: UIViewController, title: String, image: UIImage) -> UIViewController {
        let navVC = UINavigationController(rootViewController: rootVC)
        navVC.tabBarItem.title = title
        navVC.tabBarItem.image = image
        return navVC
    }
}
























