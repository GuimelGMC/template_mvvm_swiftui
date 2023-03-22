//
//  LoginBuilder.swift
//  test mvvm
//
//  Created by Guimel Moreno on 21/03/23.
//  
//

import UIKit

struct LoginBuilder {

	private let viewModel: any LoginViewModelProtocol

	init(window: UIWindow) {
        let router = LoginRouter(window: window)
        viewModel = LoginViewModel(router: router,
                                      tracker: LoginTracker())
        
    }
    
    func showScreen()  {
        viewModel.showScreen()
    }
}
