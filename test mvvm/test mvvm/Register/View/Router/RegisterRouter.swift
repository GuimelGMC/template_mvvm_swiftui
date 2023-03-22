//
//  RegisterRouter.swift
//  test mvvm
//
//  Created by Guimel Moreno on 21/03/23.
//  
//

import SwiftUI

protocol RegisterRouterProtocol {
    func showScreen<T: RegisterViewModelProtocol>(viewModel: T)
    func dismiss()
}

class RegisterRouter {
    private var navigation: UIViewController?
    
    init(navigation: UIViewController? = nil) {
        self.navigation = navigation
    }
}

extension RegisterRouter: RegisterRouterProtocol {

    func showScreen<T>(viewModel: T) where T : RegisterViewModelProtocol {
        
        guard let navigation = navigation as? UINavigationController else { return }
        let view = RegisterView(viewModel: viewModel)
        let host = UIHostingController(rootView: view)
        navigation.pushViewController(host, animated: true)
    }

    func dismiss() {
        
    }
}
