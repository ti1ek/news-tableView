//
//  ViewController.swift
//  m14
//
//  Created by Zhuldyz Bukeshova on 25.03.2023.
//

import UIKit

class MainTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupTabBarController()
        setupTabBarViewControllers()
    }
    
    private func setupTabBarController() {
        tabBar.tintColor = .systemBlue
    }
    
    private func setupTabBarViewControllers() {
        viewControllers = [
        createNavController(for: TaskOneViewController(),
                            title: "Task 1",
                            image: UIImage(systemName: "folder"),
                            selectedImage: UIImage(systemName: "folder")),
        createNavController(for: TaskTwoViewController(),
                            title: "Task 2",
                            image: UIImage(systemName: "folder"),
                            selectedImage: UIImage(systemName: "folder")),
        createNavController(for: TaskThreeViewController(),
                            title: "Task 3",
                            image: UIImage(systemName: "folder"),
                            selectedImage: UIImage(systemName: "folder")),
        ]
    }
    
    private func createNavController(for rootViewController: UIViewController,
                                     title: String,
                                     image: UIImage?,
                                     selectedImage: UIImage?) -> UIViewController {
        let navigationController = UINavigationController(rootViewController: rootViewController)
        navigationController.tabBarItem = UITabBarItem(title: title, image: image, selectedImage: selectedImage)
        navigationController.navigationBar.prefersLargeTitles = true
        rootViewController.navigationItem.title = title
        return navigationController
    }
}
