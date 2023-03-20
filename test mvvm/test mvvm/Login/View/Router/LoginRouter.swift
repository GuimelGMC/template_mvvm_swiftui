//
//  LoginRouter.swift
//  test mvvm
//
//  Created by Guimel Moreno on 27/02/23.
//  
//

import UIKit

protocol LoginRouterProtocol {
    mutating func showScreen(_ viewController: UIViewController)
    func dismiss()
}

struct LoginRouter {
    private var navigationController: UINavigationController?
    var window: UIWindow
    
    init(window: UIWindow) {
        self.window = window
    }
}

extension LoginRouter: LoginRouterProtocol {
    
    mutating func showScreen(_ viewController: UIViewController) {
        let navigation = UINavigationController(rootViewController: viewController)
        navigationController = navigation
        window.rootViewController = navigation
        window.makeKeyAndVisible()
    }
    
    func dismiss() {
        
    }
}
