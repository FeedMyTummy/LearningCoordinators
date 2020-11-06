//
//  MainVC.swift
//  LearningCoordinators
//
//  Created by FeedMyTummy on 11/4/20.
//

import UIKit

class MainVC: UIViewController {

    var coordinator: AppCoordinator?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .blue
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        navigationController?.navigationBar.isHidden = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        navigationController?.navigationBar.isHidden = false
    }
    
    @IBAction private func goToFirst(_ sender: Any) {
        coordinator?.goToFirstVC()
    }
    
}

