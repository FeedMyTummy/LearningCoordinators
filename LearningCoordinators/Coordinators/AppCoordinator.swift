//
//  AppCoordinator.swift
//  LearningCoordinators
//
//  Created by FeedMyTummy on 11/4/20.
//

import UIKit

class AppCoordinator: Coordinator {
    
    var navigationController: UINavigationController
    var childCoordinators: [Tag : Coordinator] = [:]
    
    init() {
        self.navigationController = UINavigationController()
    }
    
    func start() {
        let mainVC = MainVC.instantiate()
        mainVC.coordinator = self
        navigationController.pushViewController(mainVC, animated: true)
    }
    
    func goToFirstVC() {
        let firstCoordinator = FirstCoordinator(navigationController: navigationController)
        addChild(firstCoordinator)
        firstCoordinator.start()
    }
    
}

