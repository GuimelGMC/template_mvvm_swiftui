//
//  RegisterBuilder.swift
//  test mvvm
//
//  Created by Guimel Moreno on 21/03/23.
//  
//

import UIKit

struct RegisterBuilder {

	private let viewModel: any RegisterViewModelProtocol

	init(navigation: UIViewController?) {
        let router = RegisterRouter(navigation: navigation)
        viewModel = RegisterViewModel(router: router,
                                      tracker: RegisterTracker())
        
    }
    
    func showScreen()  {
        viewModel.showScreen()
    }
}
