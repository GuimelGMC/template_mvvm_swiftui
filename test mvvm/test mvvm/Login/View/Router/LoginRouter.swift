//
//  LoginRouter.swift
//  test mvvm
//
//  Created by Guimel Moreno on 27/02/23.
//  
//

import UIKit

protocol LoginRouterProtocol {
    func showScreen(_ viewController: UIViewController)
    func dismiss()
    func openRegister()
}

class LoginRouter {
    private var navigationController: UINavigationController?
    var window: UIWindow
    
    init(window: UIWindow) {
        self.window = window
    }
}

extension LoginRouter: LoginRouterProtocol {
    
    func showScreen(_ viewController: UIViewController) {
        let navigation = UINavigationController(rootViewController: viewController)
        navigationController = navigation
        window.rootViewController = navigation
        window.makeKeyAndVisible()
    }
    
    func dismiss() {
        
    }
    
    func openRegister() {
        guard let navigationController else { return }
        let builder = RegisterBuilder(navigation: navigationController)
        builder.showScreen()
    }
}
