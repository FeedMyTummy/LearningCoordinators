//
//  Instantiatable.swift
//  LearningCoordinators
//
//  Created by FeedMyTummy on 11/4/20.
//

import UIKit

protocol Instantiatable where Self: UIViewController {
    associatedtype T = Self
    static func instantiate() -> Self
}

extension Instantiatable {
    
    // Requires that the view controller's identifier be the same as the type name
    static func instantiate() -> Self {
        let viewControllerName = String(describing: T.self)
        let storyboardName = viewControllerName.dropLast(2)
        return SceneType<Self>(storyboardName: String(storyboardName), identifier: viewControllerName).instantiate()
    }
}

extension MainVC: Instantiatable { /* EMPTY */ }

extension FirstVC: Instantiatable { /* EMPTY */ }

internal struct SceneType<T: UIViewController> {
    
    internal let storyboardName: String
    internal let identifier: String
    
    var storyboard: UIStoryboard {
        return UIStoryboard(name: storyboardName, bundle: nil)
    }
    
    internal func instantiate() -> T {
        let identifier = self.identifier
        guard let controller = storyboard.instantiateViewController(withIdentifier: identifier) as? T else {
            fatalError("ViewController '\(identifier)' is not of the expected class \(T.self).")
        }
        return controller
    }
}

