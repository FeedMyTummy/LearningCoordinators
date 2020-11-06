//
//  Coordinator.swift
//  LearningCoordinators
//
//  Created by FeedMyTummy on 11/6/20.
//

import UIKit

protocol Coordinator: class {
    typealias Tag = String
    
    var tag: Tag { get }
    var navigationController: UINavigationController { get set }
    
    var childCoordinators: [Tag: Coordinator] { get set }
    
    func start()
}

extension Coordinator {
    
    var tag: Tag { String(describing: self) }
    
    func addChild(_ child: Coordinator) {
        childCoordinators[child.tag] = child
    }
    
    func removeChild(_ child: Coordinator) {
        childCoordinators[child.tag] = nil
    }
    
}
