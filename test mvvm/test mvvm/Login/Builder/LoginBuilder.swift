//
//  LoginBuilder.swift
//  test mvvm
//
//  Created by Guimel Moreno on 27/02/23.
//  
//

import SwiftUI

struct LoginBuilder {
    private var router: LoginRouterProtocol
    private let viewController: UIViewController
    
    init(with window: UIWindow) {
        router = LoginRouter(window: window)
        let viewModel = LoginViewModel(router: router, tracker: LoginTracker())
        let view = LoginView(viewModel: viewModel)
		viewController = UIHostingController(rootView: view)
	}
    
    mutating func showScreen() {
        router.showScreen(viewController)
    }
}
