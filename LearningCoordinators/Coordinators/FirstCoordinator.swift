//
//  FirstCoordinator.swift
//  LearningCoordinators
//
//  Created by FeedMyTummy on 11/6/20.
//

import UIKit

class FirstCoordinator: Coordinator {
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    var childCoordinators: [Tag : Coordinator] = [:]
    
    func start() {
        let firstVC = FirstVC.instantiate()
        firstVC.coordinator = self
        navigationController.pushViewController(firstVC, animated: true)
    }
    
}
