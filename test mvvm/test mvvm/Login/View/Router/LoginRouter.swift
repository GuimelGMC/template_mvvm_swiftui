//
//  LoginRouter.swift
//  test mvvm
//
//  Created by Guimel Moreno on 21/03/23.
//  
//

import SwiftUI

protocol LoginRouterProtocol {
    func showScreen<T: LoginViewModelProtocol>(viewModel: T)
    func dismiss()
    func pushRegisterModule()
}

class LoginRouter {
    private var window: UIWindow?
    private var navigationController: UINavigationController?
    
    init(window: UIWindow? = nil) {
        self.window = window
    }
}

extension LoginRouter: LoginRouterProtocol {

    func showScreen<T>(viewModel: T) where T : LoginViewModelProtocol {
        
        guard let window else { return }
        let view = LoginView(viewModel: viewModel)
        let host = UIHostingController(rootView: view)
        let navigation = UINavigationController(rootViewController: host)
        window.rootViewController = navigation
        window.makeKeyAndVisible()
        navigationController = navigation
    }

    func dismiss() {
        
    }
    
    func pushRegisterModule() {
        guard let navigationController else { return }
        let register = RegisterBuilder(navigation: navigationController)
        register.showScreen()
    }
}
